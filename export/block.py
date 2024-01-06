import glob
import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path

import mistletoe
import yaml
from mistletoe.markdown_renderer import MarkdownRenderer

# https://help.obsidian.md/Linking+notes+and+files/Internal+links#Link+to+a+block+in+a+note
INLINE_REF_PATTERN = re.compile(r"(?<= )(\^[a-zA-Z0-9-]{4,})")
TAIL_REF_PATTERN = re.compile(r"^(\^[a-zA-Z0-9-]{4,})")
EMBED_REF_PATTERN = re.compile(r"(\!\[\[(.*)#(\^[a-zA-Z0-9-]+)\|?(.*)?\]\])")
LINK_REF_PATTERN = re.compile(r"(?<!\!)(\[\[(.*)#(\^[a-zA-Z0-9-]+)\|?(.*)?\]\])")


@dataclass
class Block:
    text: str
    ref: str
    file: str
    aliases: list[str]
    date: str


@dataclass
class TranslutionReference:
    file: str
    span: str
    ref: str
    alias: str


@dataclass
class LinkReference:
    file: str
    span: str
    ref: str
    alias: str

def parse_lines(file) -> list[str]:
    with open(file, 'r') as fin:
        with MarkdownRenderer() as renderer:
            doc = mistletoe.Document(fin)
            for child in doc.children:
                yield renderer.render(child)

def parse_aliases(file) -> list[str]:
    """
    Parse aliases from a file and return a list of aliases.

    Parameters
    ----------
    file : str
        Path to file to parse.

    Returns
    -------
    list[str]
        List of aliases.
    """
    content = Path(file).read_text()
    front_matter = content.split("---")[1] if content.count("---") > 1 else ""
    if not front_matter:
        return []

    y = yaml.load(front_matter, Loader=yaml.FullLoader)
    if not y:
        return []
    aliases = y.get("aliases", y.get("alias", []))
    if isinstance(aliases, str):
        aliases = [aliases]
    results = []
    for alias in aliases:
        if isinstance(alias, str):
            results.append(alias)
        elif isinstance(alias, dict):
            for k, v in alias.items():
                results.append(f"{k}: {v}")
    if "title" in y:
        results.append(y["title"])

    return list(set(results))


def parse_blocks(file) -> list[Block]:
    """
    Parse blocks from a file and return a list of referenced blocks.

    Parameters
    ----------
    file : str
        Path to file to parse.

    Returns
    -------
    list[Block]
        List of referenced blocks.
    """
    # filename without extension
    aliases = parse_aliases(file)
    filename = Path(file).stem
    file_last_modified = Path(file).stat().st_mtime
    blocks = []
    prev_line = None
    
    for line in parse_lines(file):
        if line.strip(" \n") == "":
            continue

        patterns = INLINE_REF_PATTERN.findall(line)
        if patterns:
            pattern = patterns[-1]
            blocks.append(Block(line, pattern, filename, aliases, file_last_modified))
            prev_line = None
            continue

        patterns = TAIL_REF_PATTERN.findall(line)
        if patterns and prev_line:
            pattern = patterns[-1]
            blocks.append(
                Block(prev_line, pattern, filename, aliases, file_last_modified)
            )
            prev_line = None
            continue

        prev_line = line
    return blocks


def parse_references(file) -> list[TranslutionReference]:
    """
    Parse references from a file and return a list of referenced blocks.

    Parameters
    ----------
    file : str
        Path to file to parse.

    Returns
    -------
    list[Reference]
        List of referenced blocks.
    """
    results = []
    for match in EMBED_REF_PATTERN.findall(Path(file).read_text()):
        results.append(TranslutionReference(match[1], match[0], match[2], match[3]))

    for match in LINK_REF_PATTERN.findall(Path(file).read_text()):
        results.append(LinkReference(match[1], match[0], match[2], match[3]))
    return results

def add_anchor_to_new_file(new_file, block):
    content = Path(new_file).read_text()
    new = content.replace(block.text, f"""{block.text} REPLACEWITHANCHOR({block.ref.lstrip('^')})""")
    with open(new_file, "w") as f:
        f.write(new)

def parse_vault(dir, output, allow_missing=False, exclude=None):
    if exclude is None:
        exclude = ["intermediate", "4archives"]
    # copy all types of files to output first
    for file in glob.glob(f"{dir}/**/*", recursive=True):
        if any([e in file for e in exclude]):
            continue
        if Path(file).is_dir():
            continue
        new_file = Path(output) / Path(file).relative_to(dir)
        Path(new_file).parent.mkdir(parents=True, exist_ok=True)
        with open(file, "rb") as f:
            Path(new_file).write_bytes(f.read())

    blocks = defaultdict(list)
    for file in glob.glob(f"{dir}/**/*.md", recursive=True):
        if any([e in file for e in exclude]):
            continue
        new_file = Path(output) / Path(file).relative_to(dir)
        for block in parse_blocks(file):
            add_anchor_to_new_file(new_file, block)
            blocks[block.ref].append(block)

    links = defaultdict(list)
    broken = 0
    seen = set()
    for file in glob.glob(f"{dir}/**/*.md", recursive=True):
        if any([e in file for e in exclude]):
            continue
        for ref in parse_references(file):
            if isinstance(ref, LinkReference):
                links[ref.ref].append(ref)
                continue
            if ref.ref in blocks:
                # replace reference with block
                seen.add(ref.ref)
                new_file = Path(output) / Path(file).relative_to(dir)
                content = Path(new_file).read_text()
                old = ref.span
                if blocks[ref.ref][0].text.startswith(">"):
                    new = blocks[ref.ref][0].text
                else:
                    new = "\n".join([f"> {line}" for line in blocks[ref.ref][0].text.split("\n")])
                new = new.strip(" \n")
                new = f'''
{new}

REPLACEWITHLINK([[{ref.file}|{ref.alias}]], {ref.ref.lstrip('^')})
'''
                content = content.replace(old, new)
                Path(new_file).write_text(content)
            elif not allow_missing:
                raise ValueError(f"Reference {ref.ref} not found in vault")
            else:
                print(f"Reference {ref.ref} not found in vault")
                broken += 1

    orphan = 0
    for ref in blocks:
        if ref not in seen and ref not in links:
            print(f"Unused block mark {ref} from {blocks[ref]}")
            orphan += 1

    print(f"Found {len(blocks)} marks, {orphan} unused")
    print(
        f"Found {len(seen)} blocks embedded, {len(blocks) - len(seen)} linked, {broken} broken"
    )


if __name__ == "__main__":
    parse_vault(".", output="intermediate", allow_missing=True)
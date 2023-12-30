import glob
import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path

import yaml

# https://help.obsidian.md/Linking+notes+and+files/Internal+links#Link+to+a+block+in+a+note
REF_PATTERN = re.compile(r"(?<!#)\^[a-zA-Z0-9-]+")
EMBED_REF_PATTERN = re.compile(r"(\!\[\[(.*)#(\^[a-zA-Z0-9-]+)\|?(.*)?\]\])")


@dataclass
class Block:
    text: str
    ref: str
    file: str
    aliases: list[str]
    date: str


@dataclass
class Reference:
    file: str
    span: str
    ref: str
    alias: str


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
    content = Path(file).read_text()
    file_last_modified = Path(file).stat().st_mtime
    blocks = []
    prev_line = None
    for line in content.splitlines():
        if line.strip(" \n") == "":
            continue
        patterns = REF_PATTERN.findall(line)
        pattern = patterns[-1] if patterns else None
        if not pattern:
            prev_line = line
            continue
        if line.replace(pattern, "").strip(" \n\t"):
            blocks.append(Block(line, pattern, filename, aliases, file_last_modified))
            prev_line = None
        elif prev_line:
            blocks.append(
                Block(prev_line, pattern, filename, aliases, file_last_modified)
            )
            prev_line = None
    return blocks


def parse_references(file) -> list[Reference]:
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
        results.append(Reference(match[1], match[0], match[2], match[3]))
    return results


def parse_vault(dir, output, allow_missing=False):

    # copy all files to output first
    for file in glob.glob(f"{dir}/**/*.md", recursive=True):
        if "intermediate" in file:
            continue
        new_file = Path(output) / Path(file).relative_to(dir)
        Path(new_file).parent.mkdir(parents=True, exist_ok=True)
        Path(new_file).write_text(Path(file).read_text())

    blocks = defaultdict(list)
    for file in glob.glob(f"{dir}/**/*.md", recursive=True):
        for block in parse_blocks(file):
            blocks[block.ref].append(block)

    print(f"Found {len(blocks)} block marks")

    broken = 0
    for file in glob.glob(f"{dir}/**/*.md", recursive=True):
        for ref in parse_references(file):
            if ref.ref in blocks:
                print(f"Reference:\n{ref.span}\n")
                print(f"Found:\n {blocks[ref.ref]}\n")

                # replace reference with block
                new_file = Path(output) / Path(file).relative_to(dir)
                content = Path(new_file).read_text()
                old = ref.span
                new = f"""
> {blocks[ref.ref][0].text}
"""
                content = content.replace(old, new)
                Path(new_file).write_text(content)

            elif not allow_missing:
                raise ValueError(f"Reference {ref.ref} not found in vault")
            else:
                broken += 1
    print(f"Found {broken} broken references")


if __name__ == "__main__":
    parse_vault(
        ".",
        output="intermediate",
        allow_missing=True
    )
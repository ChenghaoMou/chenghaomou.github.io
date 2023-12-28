import os
import pathlib
from glob import glob

import yaml

pwd = os.getcwd()
filter = os.path.join(pwd, ".obsidian/plugins/obsidian-enhancing-export/lua/math_block.lua")
output_path = "build"

command_template = """
pandoc -f markdown --resource-path="{pwd}" --resource-path="statics" --lua-filter="{filter}" --embed-resources --standalone --metadata title="{title}" -s -o "{output}" -t html --mathjax="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-svg-full.js" "{file}"
"""
os.makedirs(output_path, exist_ok=True)

for file in glob("**/*.md", recursive=True):
    # parent path without the file name
    if "4archives" in file:
        continue
    basename = os.path.basename(file)
    relative_path = os.path.relpath(file, pwd).split(basename)[0]
    output_name = basename.replace(".md", ".html")
    content = pathlib.Path(file).read_text()
    if content.count("---") < 2:
        continue
    front_matter = content.split("---")[1]
    front_matter_yaml = yaml.load(front_matter, Loader=yaml.FullLoader)
    title = front_matter_yaml.get("title", "")
    if not title:
        continue
    os.makedirs(os.path.join(output_path, relative_path), exist_ok=True)
    command = command_template.format(pwd=pwd, filter=filter, title=title, file=file, output = os.path.join(output_path, relative_path, output_name))
    print(command)
    os.system(command)
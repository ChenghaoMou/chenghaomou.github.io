import glob
import re
import sys
from pathlib import Path

anchor_pattern = re.compile(r"REPLACEWITHANCHOR\((.*)\)")
link_pattern = re.compile(r"""REPLACEWITHLINK\(<a href='(.+?)'(.+)</a>\, (.*)\)""")


def update_html(html):
    content = Path(html).read_text()
    content = anchor_pattern.sub(r'<a id="\1" class="anchor"></a>', content)
    content = link_pattern.sub(r'<a href="\1#\3"\2</a>', content)

    Path(html).write_text(content)


if __name__ == "__main__":
    dir = sys.argv[1]
    for html in glob.glob(str(Path(dir) / "**" / "*.html"), recursive=True):
        update_html(html)

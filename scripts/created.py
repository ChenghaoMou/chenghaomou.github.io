import os
import glob
import frontmatter
from pathlib import Path

if __name__ == "__main__":
    print("Updating dates")
    # for file in glob.glob("./notes/*.md"):
    #     basename = os.path.basename(file)
    #     if not basename.startswith("202"):
    #         continue
    #     # update the front matter for the crated date
    #     timestamp = basename.split(".", 1)[0]
    #     year, month, day = timestamp[:4], timestamp[4:6], timestamp[6:8]
    #     post = frontmatter.loads(Path(file).read_text())
    #     post["created"] = f'{year}-{month}-{day}'
    #     post["date"] = f'{year}-{month}-{day}'
    #     post["modified"] = f'{year}-{month}-{day}'
    #     # print(frontmatter.dumps(post))
    #     with open(file, "w") as f:
    #         f.write(frontmatter.dumps(post))

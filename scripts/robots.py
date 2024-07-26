# import re
# from datetime import timedelta
# from pathlib import Path

# from bs4 import BeautifulSoup
# from requests_cache import CachedSession

# # Cache for 24 hours
# session = CachedSession("robots_cache", expire_after=timedelta(hours=24))
# response = session.get("https://darkvisitors.com/agents")
# soup = BeautifulSoup(response.text, "html.parser")

# existing_content = Path("./robots.txt").read_text()
# section_header = "# Section: Dark Visitors"
# section_footer = "# End Section: Dark Visitors"

# has_dark_visitors = (
#     section_header in existing_content and section_footer in existing_content
# )
# if has_dark_visitors:
#     # Remove the existing section
#     start = existing_content.index(section_header)
#     end = existing_content.index(section_footer) + len(section_footer)
#     existing_content = (
#         existing_content[:start].rstrip("\n ")
#         + "\n"
#         + existing_content[end:].strip("\n ")
#     )

# new_dark_visitors = f"{section_header}\n"

# for section in soup.find_all("div", {"class": "agent-links-section"}):
#     category = section.find("h2").get_text()
#     new_dark_visitors += f"\n# {category}\n"
#     for agent in section.find_all("a", href=True):
#         name = agent.find("div", {"class": "agent-name"}).get_text().strip()
#         # Check if the agent already exists in robots.txt
#         if re.findall(rf"\b{name}\b", existing_content):
#             print(f"{name} already exists in robots.txt")
#             continue
#         new_dark_visitors += f"\n# https://darkvisitors.com/agents{agent['href']}\n"
#         new_dark_visitors += f"User-agent: {name}\nDisallow: /\n"

# new_dark_visitors += f"\n{section_footer}\n"
# existing_content = existing_content + new_dark_visitors
# Path("./robots.txt").write_text(existing_content)

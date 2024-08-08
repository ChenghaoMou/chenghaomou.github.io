FROM node:20-slim as builder
RUN apt update && apt install -y git

WORKDIR /
ARG repo="https://github.com/ChenghaoMou/quartz"
COPY ./quartz quartz-local
RUN if [ "${repo}" = "https://github.com/ChenghaoMou/quartz"]; then git clone ${repo}; else cp -r /quartz-local /quartz; fi

WORKDIR /quartz
RUN npm install
RUN npx quartz create -X new -l shortest

# COPY ./blog/highlights ./content/highlights
# COPY ./blog/posts ./content/posts
# COPY ./blog/notes ./content/notes
# COPY ./blog/index.md ./content/index.md
# COPY ./blog/LICENSE ./content/LICENSE
# COPY ./blog/robots.txt ./content/robots.txt
# COPY ./blog/4archives ./content/4archives
# COPY ./blog/statics ./content/statics
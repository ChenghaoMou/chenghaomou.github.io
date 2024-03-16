FROM node:20-slim as builder
RUN apt update && apt install -y git

WORKDIR /
ARG repo="https://github.com/ChenghaoMou/quartz"
COPY ./quartz quartz-local
RUN echo ${repo}
RUN if [ "${repo}" = "https://github.com/ChenghaoMou/quartz"]; then git clone ${repo}; else cp -r /quartz-local /quartz && echo "Use local repo"; fi

WORKDIR /quartz
RUN npm install
RUN npx quartz create -X new -l shortest

COPY ./highlights ./content/highlights
COPY ./posts ./content/posts
COPY ./notes ./content/notes
COPY ./index.md ./content/index.md
COPY ./LICENSE ./content/LICENSE
COPY ./robots.txt ./content/robots.txt
COPY ./4archives ./content/4archives
COPY ./statics ./content/statics

RUN npx quartz build -d ./content
RUN cp -r ./public /public

# # Minimise HTML files
# FROM rust:slim-bullseye as post-processor
# COPY --from=builder /quartz/public /public
# RUN cargo install minhtml
# RUN minhtml --keep-closing-tags --minify-css "/public/**/*.html"
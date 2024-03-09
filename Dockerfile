FROM node:20-slim as builder
RUN apt update && apt install -y git

WORKDIR /
RUN git clone "https://github.com/ChenghaoMou/quartz"

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

# Minimise HTML files
FROM rust:slim-bullseye as post-processor
COPY --from=builder /quartz/public /public
RUN cargo install minhtml
RUN minhtml --keep-closing-tags --minify-css "/public/**/*.html"

FROM scratch as final
COPY --from=post-processor /public /public
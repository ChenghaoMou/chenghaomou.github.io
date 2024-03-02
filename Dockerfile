FROM node:20-slim as builder
RUN apt update && apt install -y git

WORKDIR /
RUN git clone "https://github.com/jackyzha0/quartz"

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

FROM scratch as final
COPY --from=builder /quartz/public /public
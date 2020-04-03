# We use the lts-alpine as base image to reduce the size
FROM node:lts-alpine
RUN apk update && apk add git
RUN npm install -g \
    semantic-release@v17.0.4 \
    @semantic-release/gitlab-config@v8.0.0 \
    @semantic-release/gitlab@v6.0.3 \
    @semantic-release/github@v7.0.5 \
    @semantic-release/exec@v5.0.0 \
    semantic-release-docker@v2.2.0
ENTRYPOINT ["npx"]
CMD ["semantic-release"]
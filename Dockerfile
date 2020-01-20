# We use the lts-alpine as base image to reduce the size
FROM node:lts-alpine
RUN apk update && apk add git
RUN npm install -g \
    semantic-release@v16.0.2 \
    @semantic-release/gitlab-config@v7.0.0 \
    @semantic-release/gitlab@v5.0.0 \
    @semantic-release/github@v6.0.1 \
    @semantic-release/exec@v4.0.0
ENTRYPOINT ["npx"]
CMD ["semantic-release"]
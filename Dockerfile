FROM node:8
RUN npm install -g \
    semantic-release@v15.14.0 \
    @semantic-release/gitlab-config@v6.0.1 \
    @semantic-release/gitlab@v4.1.0 \
    @semantic-release/github@v5.5.8
ENTRYPOINT ["npx"]
CMD ["semantic-release", "--help"]
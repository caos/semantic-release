FROM node:8
RUN npm install -g semantic-release @semantic-release/gitlab-config @semantic-release/gitlab @semantic-release/github
ENTRYPOINT ["npx"]
CMD ["semantic-release", "--help"]
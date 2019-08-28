FROM node:10-slim

LABEL "com.github.actions.name"="Firebase Deploy"
LABEL "com.github.actions.description"="Deploy a static site to Firebase Hosting"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="orange"

LABEL version="v0.1.0"
LABEL repository="https://github.com/jakejarvis/firebase-deploy-action"
LABEL homepage="https://jarv.is/"
LABEL maintainer="Jake Jarvis <jake@jarv.is>"

RUN npm install -g firebase-tools

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["--help"]

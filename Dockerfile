FROM node:latest
LABEL description="WeFastAPI documentation"
WORKDIR /docs
RUN npm install -g docsify-cli@latest
EXPOSE 3000/tcp
ENTRYPOINT docsify serve .
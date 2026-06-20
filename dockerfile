FROM node:22-alpine

RUN apk add --no-cache python3 py3-pip

RUN npm install -g n8n

RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node

USER node

EXPOSE 5678

CMD ["n8n", "start"]
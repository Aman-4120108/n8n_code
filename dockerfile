FROM n8nio/n8n:latest

# Optional: install additional packages
USER root

RUN apk add --no-cache git

USER node
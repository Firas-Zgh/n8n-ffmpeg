FROM n8nio/n8n:latest


# Install Python and yt-dlp
RUN apk add --no-cache python3 py3-pip \
    && pip3 install --upgrade yt-dlp

# (rest of your Dockerfile)
USER root
RUN apk update && apk add --no-cache ffmpeg

USER node

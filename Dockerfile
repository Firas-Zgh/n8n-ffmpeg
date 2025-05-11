FROM n8nio/n8n

USER root

RUN apk add --no-cache ffmpeg wget python3

RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp \
    && chmod a+rx /usr/local/bin/yt-dlp

USER node


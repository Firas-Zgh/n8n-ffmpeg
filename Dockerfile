FROM n8nio/n8n:latest

USER root

# Install ffmpeg and wget
RUN apk add --no-cache ffmpeg wget

# Download yt-dlp binary to /usr/local/bin
RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp \
    && chmod a+rx /usr/local/bin/yt-dlp

USER node


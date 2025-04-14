FROM n8nio/n8n

USER root
RUN apt update && apt install -y ffmpeg && apt clean

USER node

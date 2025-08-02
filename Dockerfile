# Start with the official n8n image
FROM n8nio/n8n

# Switch to the root user to install software
USER root

# Update and install FFmpeg, then clean up
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Switch back to the default non-root user for security
USER node

# Start with the official n8n image (which uses Alpine Linux)
FROM n8nio/n8n

# Switch to the root user to install software
USER root

# Use Alpine's 'apk' package manager to add ffmpeg
# '--no-cache' is the standard practice for keeping images small
RUN apk add --no-cache ffmpeg

# Switch back to the default non-root user for security
USER node

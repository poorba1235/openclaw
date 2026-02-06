FROM openclaw/openclaw:latest

# Set the working directory to where OpenClaw expects the workspace
WORKDIR /root/.openclaw/workspace

# Copy the local workspace files into the image
COPY . .

# Default command to run OpenClaw
# The base image already has an ENTRYPOINT/CMD that runs the agent.
# We don't need to override it unless we want to change flags.
# By default, it runs the gateway/agent.
CMD ["node", "dist/index.js", "gateway"]

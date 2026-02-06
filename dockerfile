FROM node:20-slim

# Install openclaw globally
RUN npm install -g openclaw

# Set working directory to the default configuration location
WORKDIR /root/.openclaw

# Copy local configuration files (openclaw.json, etc.)
COPY . .

# Expose the gateway port
EXPOSE 18789

# Run the gateway
CMD ["openclaw", "gateway", "--port", "18789"]


# Use Ubuntu base
FROM ubuntu:22.04

# Install dependencies
RUN apt update && apt install -y curl

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose Ollama's API port
EXPOSE 11434

# Start Ollama (it will auto-pull on first request)
CMD ["ollama", "serve"]

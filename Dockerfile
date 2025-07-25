FROM ubuntu:22.04

# Install dependencies
RUN apt update && apt install -y curl

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose the correct API port
EXPOSE 11434

# ✅ Fix: Make Ollama publicly accessible
CMD ["ollama", "serve", "--host", "0.0.0.0"]


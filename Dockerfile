# Base image
FROM ubuntu:22.04

# Install dependencies
RUN apt update && apt install -y curl

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Pull a model (you can change this to mistral, codellama, etc.)
RUN ollama pull llama3

# Expose the default Ollama port
EXPOSE 11434

# Start the Ollama API server
CMD ["ollama", "serve"]

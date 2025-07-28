# Use official Ollama base image
FROM ollama/ollama:latest

# Optional: Pull a model at build time (comment out if not needed)
# RUN ollama pull llama3

# Expose Ollama default port
EXPOSE 11434

# Start Ollama server publicly (very important!)
CMD ["ollama", "serve", "--host", "0.0.0.0"]

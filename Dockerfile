# Use Ollama base image
FROM ollama/ollama:latest

# (Optional) Pull a model like llama3 during build
# RUN ollama pull llama3

# Expose Ollama default port
EXPOSE 11434

# Start Ollama server and bind to public interface
CMD ["ollama", "serve", "--host", "0.0.0.0"]

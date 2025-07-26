FROM ollama/ollama:latest

# Expose the Ollama API port
EXPOSE 11434

# Start Ollama on public interface for Railway
CMD ["ollama", "serve", "--host", "0.0.0.0"]

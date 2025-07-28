# Use official Ollama image
FROM ollama/ollama:latest

# Optional: pre-pull the model (uncomment if needed)
# RUN ollama pull llama3

# Expose default Ollama port
EXPOSE 11434

# ENTRYPOINT as base command, CMD as args
ENTRYPOINT ["ollama"]
CMD ["serve", "--host", "0.0.0.0"]

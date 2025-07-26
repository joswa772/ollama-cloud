FROM ollama/ollama:latest

# Expose Ollama API port
EXPOSE 11434

# ✅ Correct CMD to run the API
CMD ["ollama", "serve", "--host", "0.0.0.0"]

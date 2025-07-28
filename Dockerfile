# Start from the Ollama base image
FROM ollama/ollama

# Copy your server code
COPY . /app
WORKDIR /app

# Make sure start.sh is executable
RUN chmod +x start.sh

# Expose the default Ollama port
EXPOSE 11434

# Run Ollama and pull the model at runtime
CMD ["/app/start.sh"]

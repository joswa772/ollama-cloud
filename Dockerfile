FROM ollama/ollama

# Set working directory
WORKDIR /app

# Copy everything into the container
COPY . /app

# Make sure start.sh is executable
RUN chmod +x /app/start.sh

# Expose Ollama's default port
EXPOSE 11434

# Run the startup script correctly
CMD ["sh", "/app/start.sh"]

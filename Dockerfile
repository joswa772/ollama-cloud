FROM ollama/ollama

# Set working directory
WORKDIR /app

# Copy your files into the container
COPY . /app

# Make the script executable
RUN chmod +x /app/start.sh

# Expose Ollama's default port
EXPOSE 11434

# 🚨 KEY FIX: Override the default ENTRYPOINT
ENTRYPOINT []

# Run your startup script with sh
CMD ["sh", "/app/start.sh"]

FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl git

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Set Ollama home (writable on Railway)
ENV OLLAMA_HOME=/root/.ollama

# Copy start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 11434

CMD ["/start.sh"]

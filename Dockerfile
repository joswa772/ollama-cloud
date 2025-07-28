FROM ollama/ollama:latest

# Expose port
EXPOSE 11434

# Set env variable to bind on all interfaces
ENV OLLAMA_HOST=0.0.0.0

ENTRYPOINT ["ollama"]
CMD ["serve"]

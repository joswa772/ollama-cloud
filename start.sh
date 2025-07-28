#!/bin/bash

# Start Ollama in the background
ollama serve &

# Wait for server to start
sleep 5

# Pull the model
ollama pull llama3

# Optional: run your own RAG app after model is ready
# Example: python3 server.py


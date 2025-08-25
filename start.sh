#!/bin/bash
set -e

# Ensure Ollama home exists
mkdir -p "$OLLAMA_HOME"
chmod -R 777 "$OLLAMA_HOME"

echo ">>> Starting Ollama server in background..."
ollama serve &
sleep 8

echo ">>> Pulling llama3 model..."
ollama pull llama3 || {
  echo "❌ Failed to pull llama3"
  exit 1
}

echo "✅ llama3 model pulled successfully."
echo ">>> Restarting Ollama in foreground..."
exec ollama serve

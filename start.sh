#!/bin/bash
set -e

# Ensure Ollama home exists
mkdir -p "$OLLAMA_HOME"
chmod -R 777 "$OLLAMA_HOME"

echo ">>> Pulling llama3 model..."
OLLAMA_HOST=0.0.0.0:11434 ollama pull llama3 || {
  echo "❌ Failed to pull llama3"
  exit 1
}

echo "✅ llama3 model pulled successfully."
echo ">>> Starting Ollama server..."
exec env OLLAMA_HOST=0.0.0.0:11434 ollama serve

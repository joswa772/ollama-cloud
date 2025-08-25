#!/bin/bash
set -e

# Ensure Ollama home exists
mkdir -p "$OLLAMA_HOME"
chmod -R 777 "$OLLAMA_HOME"

echo ">>> Starting Ollama server in background..."
OLLAMA_HOST=0.0.0.0:11434 ollama serve &
sleep 10   # give it some time to boot

echo ">>> Pulling llama3 model..."
OLLAMA_HOST=0.0.0.0:11434 ollama pull llama3 || {
  echo "❌ Failed to pull llama3"
  exit 1
}

echo "✅ llama3 model pulled successfully."
echo ">>> Restarting Ollama in foreground..."
exec env OLLAMA_HOST=0.0.0.0:11434 ollama serve

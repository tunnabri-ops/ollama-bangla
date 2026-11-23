#!/bin/bash
# chat.sh — Ollama Bangla chat in the terminal (no key, no server needed beyond Ollama)
# Needs: Ollama running (ollama serve) + model qwen2.5:7b (see Modelfile / README)
# Usage: ./chat.sh [model]
# Type your message in Bangla, press Enter. Type /quit to exit.
set -e
MODEL="${1:-qwen2.5:7b}"
if ! curl -s --max-time 3 http://localhost:11434/api/tags >/dev/null 2>&1; then
  echo "Ollama চলছে না — প্রথমে চালান: ollama serve"
  exit 1
fi
echo "বাংলা চ্যাট শুরু — মডেল: $MODEL (বের হতে /quit লিখুন)"
while true; do
  printf "তুমি: "
  read -r msg || break
  [ "$msg" = "/quit" ] && break
  [ -z "$msg" ] && continue
  curl -s http://localhost:11434/api/chat -d "$(python3 -c "import json,sys; print(json.dumps({'model': sys.argv[1], 'stream': False, 'messages': [{'role': 'system', 'content': 'Always reply in Bangla unless the user writes in English. Keep answers short first.'}, {'role': 'user', 'content': sys.argv[2]}]}))" "$MODEL" "$msg")" | python3 -c "import json,sys; d=json.load(sys.stdin); print('মডেল:', d.get('message',{}).get('content','(কোনো উত্তর আসেনি)'))"
done

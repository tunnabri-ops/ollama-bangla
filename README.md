# Ollama Bangla — বাংলায় চলা লোকাল AI

Bangla-first Ollama setup, built on **ollama/ollama**.

- **Original repo:** https://github.com/ollama/ollama (get up and running with local LLMs — Qwen, Gemma, DeepSeek, Llama and more)

## কী আছে / What is inside

- `Modelfile` — creates a `bangla` model from `qwen2.5:7b` with a Bangla system prompt: replies in Bangla by default, Banglish if the user writes Banglish, short answers first, code explained in Bangla.

## যা ঠিক করা হয়েছে / What was fixed

- Upstream Ollama ships with no Bangla behaviour — the default model answers in English. This Modelfile adds the Bangla system prompt, a 4096-token context and temperature 0.7, so the same free local model speaks Bangla out of the box.
- Model choice: `qwen2.5:7b` — good Bangla support for its size, runs on a normal laptop CPU/GPU. (Ollama's own quickstart in the README uses `ollama run gemma4`; Qwen 2.5 7B is the stronger Bangla pick.)

## ব্যবহার / How to use

```bash
# 1. Install Ollama (from the upstream README)
curl -fsSL https://ollama.com/install.sh | sh

# 2. Download the base model
ollama pull qwen2.5:7b

# 3. Create the Bangla model from this repo's Modelfile
ollama create bangla -f Modelfile

# 4. Chat in Bangla
ollama run bangla
```

No API key, no account, everything runs on your own computer.

# 🤖 Ollama Bangla

**A Bangla-speaking local AI — runs fully on your own computer. No key, no account, no cloud.**

## ✨ Features

- `Modelfile` — builds a `bangla` model from `qwen2.5:7b` with a Bangla system prompt: replies in Bangla by default, in Banglish if you write Banglish, short answers first, code explained in Bangla.
- `chat.sh` — terminal chat: `./chat.sh [model]`, type in Bangla, type `/quit` to exit. It checks that Ollama is running first.
- 4096-token context, temperature 0.7 — tuned for everyday Bangla chat.

## 🚀 How to use

```bash
# 1. Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# 2. Download the base model
ollama pull qwen2.5:7b

# 3. Create the Bangla model from this repo's Modelfile
ollama create bangla -f Modelfile

# 4. Chat in Bangla
ollama run bangla
```

Or skip step 4 and use the chat script instead:

```bash
./chat.sh
```

## ⚠️ Honest limits

- Answer quality depends on the base model (`qwen2.5:7b`) — a 7B local model, not a frontier cloud model. It can be wrong; it says so in Bangla instead of guessing when it does not know.
- Needs a few GB of disk for the model and enough RAM/CPU (or a GPU) to run it at a good speed.
- The model only knows what it was trained on — it has no live internet access.

## 🇧🇩 বাংলা

**ওলামা বাংলা — নিজের কম্পিউটারে চলা বাংলা এআই।**

- কোনো API key লাগবে না, কোনো অ্যাকাউন্ট লাগবে না — সব আপনার কম্পিউটারেই চলে
- বাংলায় উত্তর দেয়, Banglish লিখলে Banglish-এ উত্তর দেয়
- কোড বাংলায় বুঝিয়ে দেয়, কোডের কমেন্ট ইংরেজিতেই থাকে

## 📄 License

MIT — use it however you like.

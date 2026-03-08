<div align="center">

# 🎙 Sumi — Homebrew Tap

[![Latest Release](https://img.shields.io/github/v/release/alan890104/sumi?label=version\&color=blue)](https://github.com/alan890104/sumi/releases/latest)
[![License](https://img.shields.io/github/license/alan890104/sumi)](https://github.com/alan890104/sumi/blob/main/LICENSE)
[![macOS](https://img.shields.io/badge/macOS-Apple%20Silicon-black?logo=apple)](https://github.com/alan890104/sumi)

**System-wide speech-to-text with AI polish for macOS.**  
Press a hotkey anywhere. Speak. Text pastes at your cursor — rewritten by an LLM for the app you're in.

[GitHub](https://github.com/alan890104/sumi) · [Releases](https://github.com/alan890104/sumi/releases) · [Report a Bug](https://github.com/alan890104/sumi/issues)

</div>

---

## Installation

```bash
brew tap alan890104/sumi
brew install --cask sumi
```

> **Requirements:** macOS · Apple Silicon (arm64) · [Homebrew](https://brew.sh/)

---

## Key Features

| | |
|---|---|
| 🎯 **Per-App AI Polish** | 18 built-in rules — Slack, Gmail, Notion, Terminal, and more. The LLM prompt adapts to whichever app has focus. Write your own rules or describe them in plain text. |
| 🔒 **Fully Local Option** | Whisper or Qwen3-ASR with Metal GPU, local LLM polish (Qwen3-8B, Qwen2.5-7B, Llama 3 Taiwan 8B). Audio never leaves your Mac. |
| 🗣 **Speaker Diarization** | Meeting mode identifies who's speaking. Transcripts are labelled by speaker with timestamps. |
| ✏️ **Edit by Voice** | Select any text, press `Ctrl+Option+Z`, say what you want done. The AI rewrites and pastes it back. |
| 📝 **Meeting Mode** | Continuous background transcription into a note file. Import audio files for retroactive transcription. |
| ☁️ **Cloud STT & LLM** | Bring your own key — Groq, OpenAI, Deepgram, Azure, Gemini, OpenRouter, and any OpenAI-compatible endpoint. |
| 📖 **Open Source** | GPLv3. Read the code, build it yourself, run it forever. |

---

## Update

```bash
brew upgrade --cask sumi
```

## Uninstall

```bash
# Remove the app only
brew uninstall --cask sumi

# Remove the app AND all user data (transcription history, settings, models)
brew uninstall --cask --zap sumi
```

---

## What's New in v0.5.2

- **Speaker diarization** — Meeting transcripts now label each speaker (Speaker A, Speaker B …) using VBx clustering
- **Audio import** — Import audio files directly into Meeting Notes for transcription
- **zh-CN → zh-TW normalization** — Automatic conversion for Traditional Chinese users
- **Configurable data directory** — Set a custom path for Sumi's data folder
- **New polish models** — Qwen3-8B and Ministral-14B, with hardware compatibility indicators
- Mic reconnection after idle timeout or device hot-plug
- More responsive Whisper live preview
- Local polish: no timeout, max tokens raised to 8192

---

<div align="center">

Made with ❤️ · [alan890104/sumi](https://github.com/alan890104/sumi)

</div>
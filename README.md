# Eira

Eira is a local-only AI for your Mac.

It is built for people who want desktop AI assistance **without** sending their prompts, app context, browser context, or private workflow data to online AI providers. Eira does not use OpenAI, Anthropic, Gemini, or other hosted LLM APIs for inference. AI inference runs on your Mac.

Eira currently works best with **Gemma 4 26B A4B**. Other models are still under testing.

## Requirements

- **Apple Silicon** Mac (M1 or newer) — inference runs on-device via MLX
- **macOS 14 Sonoma** or newer

## Install

```bash
brew install --cask Penrose0v0/tap/eira
```

## Open

Eira lives in the **menu bar** (there is no Dock icon). After installing, launch it once:

```bash
open /Applications/Eira.app
```

Then look for the Eira icon in your menu bar.

## First Run

On first launch, Eira will guide you through onboarding.

- **Permissions** — Eira requests certain macOS permissions (such as Screen Recording, Accessibility, and Input Monitoring) to understand and act on your local desktop context. These are required for Eira to work.
- **Model download** — Eira downloads its local model (several GB) the first time. This runs once and needs a network connection; after that everything is offline.

The information Eira uses for context is processed locally on your Mac. It is not sent to us or any other developers.

## Update

```bash
brew update
brew upgrade --cask eira
```

## Uninstall

```bash
brew uninstall --cask eira
```

## Notes

Eira is distributed as a prebuilt macOS app through this tap, currently not notarized. To keep installation to a single command, the cask removes the Gatekeeper quarantine flag right after install, so the app launches normally. Notarization is planned for a later release.
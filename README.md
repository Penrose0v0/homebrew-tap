# Eira

Eira is a local-only AI for your Mac.

It is built for people who want desktop AI assistance **without** sending their prompts, app context, browser context, or private workflow data to online AI providers. Eira does not use OpenAI, Anthropic, Gemini, or other hosted LLM APIs for inference. AI inference runs on your Mac.

Eira currently works best with **Gemma 4 26B A4B**. Other models are still under testing.

## Install

```bash
brew install --cask --no-quarantine Penrose0v0/tap/eira
```

## Open

After installation, open Eira from Applications:

```bash
open /Applications/Eira.app
```

## First Run

On first launch, Eira will guide you through onboarding. 

Eira requires certain macOS permissions, such as Accessibility or automation access, to understand and act on your local desktop context. These permissions are required for Eira to work.

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

Eira is distributed as a prebuilt macOS app through this tap.

Eira is not currently notarized. The `--no-quarantine` flag is used to avoid macOS Gatekeeper blocking the app during early distribution.

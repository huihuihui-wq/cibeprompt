#!/usr/bin/env bash
# CinePrompt Skill one-liner installer (Mac/Linux)
# Usage: curl -fsSL https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.sh | bash

set -e

REPO="https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main"
BASE="$HOME/.config/opencode"

echo "Installing CinePrompt..."

# Create directories
mkdir -p "$BASE/skills/cibeprompt"
mkdir -p "$BASE/commands"

# Download SKILL.md
echo "  -> Downloading SKILL.md..."
curl -fsSL -o "$BASE/skills/cibeprompt/SKILL.md" \
  "$REPO/skills/cibeprompt/SKILL.md"

# Download cine.md
echo "  -> Downloading cine.md..."
curl -fsSL -o "$BASE/commands/cine.md" \
  "$REPO/commands/cine.md"

# Verify
if [ -f "$BASE/skills/cibeprompt/SKILL.md" ] && [ -f "$BASE/commands/cine.md" ]; then
  echo ""
  echo "CinePrompt installed successfully!"
  echo ""
  echo "  Skill: $BASE/skills/cibeprompt/SKILL.md"
  echo "  Cmd  : $BASE/commands/cine.md"
  echo ""
  echo "Restart OpenCode TUI to use /cine command."
  echo ""
  echo "  Example: /cine a detective in a rain-soaked luggage car"
else
  echo "Install failed. Check your network or install manually."
  exit 1
fi

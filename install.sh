#!/usr/bin/env bash
# CinePrompt Skill installer (Mac/Linux)
# Auto-detects: OpenCode / Claude Code / Codex CLI / Cursor / Windsurf
# Usage: curl -fsSL https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.sh | bash

set -e

REPO="https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main"

echo "Installing CinePrompt..."

# Detect all supported AI tool config directories
declare -A TOOLS=(
  ["opencode"]="$HOME/.config/opencode"
  ["claude"]="$HOME/.claude"
  ["codex"]="$HOME/.codex"
)

# Pick whichever exists (priority: opencode > claude > codex)
BASE=""
TOOL_NAME=""
for tool in opencode claude codex; do
  if [ -d "${TOOLS[$tool]}" ]; then
    BASE="${TOOLS[$tool]}"
    TOOL_NAME="$tool"
    break
  fi
done

# Default to opencode if none found
if [ -z "$BASE" ]; then
  BASE="$HOME/.config/opencode"
  TOOL_NAME="opencode"
  echo "  No existing AI tool config found, defaulting to opencode"
fi

echo "  -> Detected: $TOOL_NAME ($BASE)"

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
  echo "CinePrompt installed successfully for $TOOL_NAME!"
  echo ""
  echo "  Skill: $BASE/skills/cibeprompt/SKILL.md"
  echo "  Cmd  : $BASE/commands/cine.md"
  echo ""
  echo "Restart your AI tool's TUI to use /cine command."
  echo "  Example: /cine a detective in a rain-soaked luggage car"
  echo ""
  echo "If you want to install for a DIFFERENT tool, manually copy the files:"
  echo "  Cursor:  cp $BASE/skills/cibeprompt/SKILL.md ./.cursorrules"
  echo "  Windsurf: cp $BASE/skills/cibeprompt/SKILL.md ./.windsurfrules"
else
  echo "Install failed. Check your network or install manually."
  exit 1
fi

#!/usr/bin/env bash
# CinePrompt Skill 涓€閿畨瑁呰剼鏈?(Mac/Linux)
# 鐢ㄦ硶: curl -fsSL https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.sh | bash

set -e

REPO="https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main"
BASE="$HOME/.config/opencode"

echo "馃幀 Installing CinePrompt..."

# 鍒涘缓鐩綍
mkdir -p "$BASE/skills/cineprompt"
mkdir -p "$BASE/commands"

# 涓嬭浇 SKILL.md
echo "  鈫?Downloading SKILL.md..."
curl -fsSL -o "$BASE/skills/cineprompt/SKILL.md" \
  "$REPO/skills/cineprompt/SKILL.md"

# 涓嬭浇 cine.md
echo "  鈫?Downloading cine.md..."
curl -fsSL -o "$BASE/commands/cine.md" \
  "$REPO/commands/cine.md"

# 楠岃瘉
if [ -f "$BASE/skills/cineprompt/SKILL.md" ] && [ -f "$BASE/commands/cine.md" ]; then
  echo ""
  echo "鉁?CinePrompt 瀹夎鎴愬姛锛?
  echo ""
  echo "  Skill: $BASE/skills/cineprompt/SKILL.md"
  echo "  Cmd  : $BASE/commands/cine.md"
  echo ""
  echo "閲嶅惎 OpenCode TUI 鍗冲彲浣跨敤 /cine 鍛戒护銆?
  echo ""
  echo "  绀轰緥: /cine 涓€涓偛浼ょ殑濂充汉闈犲湪绐楄竟"
else
  echo "鉂?瀹夎澶辫触锛岃妫€鏌ョ綉缁滄垨鎵嬪姩瀹夎銆?
  exit 1
fi

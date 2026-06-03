#!/usr/bin/env bash
# CinePrompt Skill 一键安装脚�?(Mac/Linux)
# 用法: curl -fsSL https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/install.sh | bash

set -e

REPO="https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main"
BASE="$HOME/.config/opencode"

echo "🎬 Installing CinePrompt..."

# 创建目录
mkdir -p "$BASE/skills/cineprompt"
mkdir -p "$BASE/commands"

# 下载 SKILL.md
echo "  �?Downloading SKILL.md..."
curl -fsSL -o "$BASE/skills/cineprompt/SKILL.md" \
  "$REPO/skills/cineprompt/SKILL.md"

# 下载 cine.md
echo "  �?Downloading cine.md..."
curl -fsSL -o "$BASE/commands/cine.md" \
  "$REPO/commands/cine.md"

# 验证
if [ -f "$BASE/skills/cineprompt/SKILL.md" ] && [ -f "$BASE/commands/cine.md" ]; then
  echo ""
  echo "�?CinePrompt 安装成功�?
  echo ""
  echo "  Skill: $BASE/skills/cineprompt/SKILL.md"
  echo "  Cmd  : $BASE/commands/cine.md"
  echo ""
  echo "重启 OpenCode TUI 即可使用 /cine 命令�?
  echo ""
  echo "  示例: /cine 一个悲伤的女人靠在窗边"
else
  echo "�?安装失败，请检查网络或手动安装�?
  exit 1
fi

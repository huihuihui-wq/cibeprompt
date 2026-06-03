# INSTALL.md

> **This file is read by AI agents** (OpenCode, Claude Code, Codex CLI) to install CinePrompt.
> Humans can also follow the steps below.

## What to install

CinePrompt consists of **two files** that need to be placed in the user's config directory:

1. **Skill definition** 鈫?`~/.config/opencode/skills/cineprompt/SKILL.md`
2. **Slash command** 鈫?`~/.config/opencode/commands/cine.md`

On Windows, replace `~/.config/opencode/` with `%USERPROFILE%\.config\opencode\` (i.e. `C:\Users\<username>\.config\opencode\`).

## Installation Steps

### Step 1: Detect the platform

```bash
# Detect OS
case "$(uname -s 2>/dev/null || echo Windows)" in
  Linux|Darwin) OS=unix ;;
  *)            OS=windows ;;
esac
echo "Detected OS: $OS"
```

### Step 2: Create directories

**Unix (Mac/Linux):**
```bash
mkdir -p ~/.config/opencode/skills/cineprompt
mkdir -p ~/.config/opencode/commands
```

**Windows (PowerShell):**
```powershell
$base = Join-Path $env:USERPROFILE '.config\opencode'
New-Item -ItemType Directory -Path (Join-Path $base 'skills\cineprompt') -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $base 'commands') -Force | Out-Null
```

### Step 3: Download files

**Unix:**
```bash
# Skill body
curl -fsSL -o ~/.config/opencode/skills/cineprompt/SKILL.md \
  https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/skills/cineprompt/SKILL.md

# /cine command
curl -fsSL -o ~/.config/opencode/commands/cine.md \
  https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/commands/cine.md
```

**Windows (PowerShell):**
```powershell
$base = Join-Path $env:USERPROFILE '.config\opencode'
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/skills/cineprompt/SKILL.md' `
  -OutFile (Join-Path $base 'skills\cineprompt\SKILL.md') -UseBasicParsing
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/commands/cine.md' `
  -OutFile (Join-Path $base 'commands\cine.md') -UseBasicParsing
```

### Step 4: Verify

```bash
# Unix
test -f ~/.config/opencode/skills/cineprompt/SKILL.md && echo "鉁?SKILL.md installed"
test -f ~/.config/opencode/commands/cine.md && echo "鉁?cine.md installed"
```

```powershell
# Windows
$base = Join-Path $env:USERPROFILE '.config\opencode'
if (Test-Path (Join-Path $base 'skills\cineprompt\SKILL.md')) { Write-Host "鉁?SKILL.md installed" -ForegroundColor Green }
if (Test-Path (Join-Path $base 'commands\cine.md')) { Write-Host "鉁?cine.md installed" -ForegroundColor Green }
```

### Step 5: Restart OpenCode

Tell the user to restart their OpenCode TUI session. The `/cine` command will be available immediately.

## Verification Test

After install, ask the user to run:

```
/cine 涓€涓偛浼ょ殑濂充汉闈犲湪绐楄竟
```

Expected output should contain both Chinese and English prompts in the format defined in SKILL.md.

## Uninstall

**Unix:**
```bash
rm -rf ~/.config/opencode/skills/cineprompt
rm -f ~/.config/opencode/commands/cine.md
```

**Windows (PowerShell):**
```powershell
$base = Join-Path $env:USERPROFILE '.config\opencode'
Remove-Item -Recurse -Force (Join-Path $base 'skills\cineprompt')
Remove-Item -Force (Join-Path $base 'commands\cine.md')
```

## Update

To update to the latest version, re-run Step 3 with `--force` (curl) or overwrite directly (PowerShell).

## Fallback: Manual

If the user can't run shell commands, instruct them to:

1. Download the two files from this repository's `skills/cineprompt/` and `commands/` folders
2. Place them at the paths mentioned above
3. Restart OpenCode

---

**Repository**: https://github.com/huihuihui-wq/cineprompt-skill

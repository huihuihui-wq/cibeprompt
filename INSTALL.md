# INSTALL.md

> **This file is read by AI agents** (OpenCode, Claude Code, Codex CLI) to install CinePrompt.
> Humans can also follow the steps below.

## What to install

CinePrompt consists of **two files** that need to be placed in the user's config directory:

1. **Skill definition** → `~/.config/opencode/skills/cibeprompt/SKILL.md`
2. **Slash command** → `~/.config/opencode/commands/cine.md`

On Windows, replace `~/.config/opencode/` with `%USERPROFILE%\.config\opencode\` (i.e. `C:\Users\<username>\.config\opencode\`).

## Installation Steps

### Step 1: Detect the platform

```bash
case "$(uname -s 2>/dev/null || echo Windows)" in
  Linux|Darwin) OS=unix ;;
  *)            OS=windows ;;
esac
echo "Detected OS: $OS"
```

### Step 2: Create directories

**Unix (Mac/Linux):**
```bash
mkdir -p ~/.config/opencode/skills/cibeprompt
mkdir -p ~/.config/opencode/commands
```

**Windows (PowerShell):**
```powershell
$base = Join-Path $env:USERPROFILE '.config\opencode'
New-Item -ItemType Directory -Path (Join-Path $base 'skills\cibeprompt') -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $base 'commands') -Force | Out-Null
```

### Step 3: Download files

**Unix:**
```bash
curl -fsSL -o ~/.config/opencode/skills/cibeprompt/SKILL.md \
  https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/skills/cibeprompt/SKILL.md

curl -fsSL -o ~/.config/opencode/commands/cine.md \
  https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/commands/cine.md
```

**Windows (PowerShell):**
```powershell
$base = Join-Path $env:USERPROFILE '.config\opencode'
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/skills/cibeprompt/SKILL.md' `
  -OutFile (Join-Path $base 'skills\cibeprompt\SKILL.md') -UseBasicParsing
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/commands/cine.md' `
  -OutFile (Join-Path $base 'commands\cine.md') -UseBasicParsing
```

### Step 4: Verify

```bash
test -f ~/.config/opencode/skills/cibeprompt/SKILL.md && echo "SKILL.md installed"
test -f ~/.config/opencode/commands/cine.md && echo "cine.md installed"
```

```powershell
$base = Join-Path $env:USERPROFILE '.config\opencode'
if (Test-Path (Join-Path $base 'skills\cibeprompt\SKILL.md')) { Write-Host "SKILL.md installed" -ForegroundColor Green }
if (Test-Path (Join-Path $base 'commands\cine.md')) { Write-Host "cine.md installed" -ForegroundColor Green }
```

### Step 5: Restart OpenCode

Tell the user to restart their OpenCode TUI session. The `/cine` command will be available immediately.

## Verification Test

After install, ask the user to run:

```
/cine 一个悲伤的女人靠在窗边
```

Expected output should contain both Chinese and English prompts in the format defined in SKILL.md.

## Uninstall

**Unix:**
```bash
rm -rf ~/.config/opencode/skills/cibeprompt
rm -f ~/.config/opencode/commands/cine.md
```

**Windows (PowerShell):**
```powershell
$base = Join-Path $env:USERPROFILE '.config\opencode'
Remove-Item -Recurse -Force (Join-Path $base 'skills\cibeprompt')
Remove-Item -Force (Join-Path $base 'commands\cine.md')
```

## Update

To update to the latest version, re-run Step 3 with `--force` (curl) or overwrite directly (PowerShell).

## Fallback: Manual

If the user can't run shell commands, instruct them to:

1. Download the two files from this repository's `skills/cibeprompt/` and `commands/` folders
2. Place them at the paths mentioned above
3. Restart OpenCode

---

**Repository**: https://github.com/huihuihui-wq/cibeprompt

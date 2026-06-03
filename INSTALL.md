# INSTALL.md

> This file is for **AI agents (OpenCode, Claude Code, Codex CLI)** to install the CinePrompt skill in one step.

## Quick Install (Recommended)

If you already know the repository exists at `https://github.com/huihuihui-wq/cibeprompt`, just run the one-liner directly. No need to read further instructions — the script handles everything.

### Mac / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.sh | bash
```

### Windows (PowerShell)

```powershell
irm https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.ps1 | iex
```

**What the script does:**

1. Creates `~/.config/opencode/skills/cibeprompt/` and `~/.config/opencode/commands/`
2. Downloads `SKILL.md` and `commands/cine.md` from the repository
3. Verifies both files exist
4. Prints success message

After the script finishes, tell the user:

> OpenCode skill installed successfully. Restart OpenCode TUI to use the `/cine` command.

---

## Manual Install (Fallback)

If the one-liner fails, the user can install manually:

### Mac / Linux

```bash
mkdir -p ~/.config/opencode/skills/cibeprompt
mkdir -p ~/.config/opencode/commands

curl -fsSL -o ~/.config/opencode/skills/cibeprompt/SKILL.md \
  https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/skills/cibeprompt/SKILL.md

curl -fsSL -o ~/.config/opencode/commands/cine.md \
  https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/commands/cine.md
```

### Windows (PowerShell)

```powershell
$base = Join-Path $env:USERPROFILE '.config\opencode'
New-Item -ItemType Directory -Path (Join-Path $base 'skills\cibeprompt') -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $base 'commands') -Force | Out-Null

Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/skills/cibeprompt/SKILL.md' `
  -OutFile (Join-Path $base 'skills\cibeprompt\SKILL.md') -UseBasicParsing

Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/commands/cine.md' `
  -OutFile (Join-Path $base 'commands\cine.md') -UseBasicParsing
```

---

## Verification

After install, the user can verify with:

**Mac / Linux:**
```bash
test -f ~/.config/opencode/skills/cibeprompt/SKILL.md && echo "SKILL.md OK"
test -f ~/.config/opencode/commands/cine.md && echo "cine.md OK"
```

**Windows (PowerShell):**
```powershell
$base = Join-Path $env:USERPROFILE '.config\opencode'
if (Test-Path (Join-Path $base 'skills\cibeprompt\SKILL.md')) { Write-Host "SKILL.md OK" }
if (Test-Path (Join-Path $base 'commands\cine.md')) { Write-Host "cine.md OK" }
```

---

## What to Tell the User After Install

> CinePrompt has been installed. Restart your OpenCode TUI session, then try `/cine a detective in a rain-soaked luggage car`. You should receive an English cinematography prompt with 3-4 shots, each with quantified camera movements and a style anchor.

---

## Uninstall

**Mac / Linux:**
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

---

## Repository Links

- **Repository:** https://github.com/huihuihui-wq/cibeprompt
- **Issues:** https://github.com/huihuihui-wq/cibeprompt/issues
- **Live Demo:** https://huihuihui-wq.github.io/cibeprompt/

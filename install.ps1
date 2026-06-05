# CinePrompt Skill installer (Windows PowerShell)
# Auto-detects: OpenCode / Claude Code / Codex CLI
# Usage 1: irm https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.ps1 | iex
# Usage 2: Local execution .\install.ps1

$ErrorActionPreference = 'Stop'

$Repo = 'https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main'

Write-Host "Installing CinePrompt..." -ForegroundColor Cyan

# Detect AI tool config (priority: opencode > claude > codex)
$Base = $null
$ToolName = $null
$candidates = @(
  @{ Name = 'opencode'; Path = (Join-Path $env:USERPROFILE '.config\opencode') },
  @{ Name = 'claude';   Path = (Join-Path $env:USERPROFILE '.claude') },
  @{ Name = 'codex';    Path = (Join-Path $env:USERPROFILE '.codex') }
)
foreach ($c in $candidates) {
  if (Test-Path -LiteralPath $c.Path) {
    $Base = $c.Path
    $ToolName = $c.Name
    break
  }
}
if (-not $Base) {
  $Base = (Join-Path $env:USERPROFILE '.config\opencode')
  $ToolName = 'opencode'
  Write-Host "  No existing AI tool config found, defaulting to opencode" -ForegroundColor Yellow
}

Write-Host "  -> Detected: $ToolName ($Base)" -ForegroundColor Cyan

$SkillDir = Join-Path $Base 'skills\cibeprompt'
$CmdDir = Join-Path $Base 'commands'

# Create directories
foreach ($p in @($SkillDir, $CmdDir)) {
  if (-not (Test-Path -LiteralPath $p)) {
    New-Item -ItemType Directory -Path $p -Force | Out-Null
  }
}

# Download SKILL.md
Write-Host "  -> Downloading SKILL.md..." -ForegroundColor Gray
Invoke-WebRequest -Uri "$Repo/skills/cibeprompt/SKILL.md" `
  -OutFile (Join-Path $SkillDir 'SKILL.md') -UseBasicParsing

# Download cine.md
Write-Host "  -> Downloading cine.md..." -ForegroundColor Gray
Invoke-WebRequest -Uri "$Repo/commands/cine.md" `
  -OutFile (Join-Path $CmdDir 'cine.md') -UseBasicParsing

# Verify
$skillOk = Test-Path -LiteralPath (Join-Path $SkillDir 'SKILL.md')
$cmdOk = Test-Path -LiteralPath (Join-Path $CmdDir 'cine.md')

if ($skillOk -and $cmdOk) {
  Write-Host ""
  Write-Host "CinePrompt installed successfully for $ToolName!" -ForegroundColor Green
  Write-Host ""
  Write-Host "  Skill: $SkillDir\SKILL.md"
  Write-Host "  Cmd  : $CmdDir\cine.md"
  Write-Host ""
  Write-Host "Restart your AI tool's TUI to use /cine command." -ForegroundColor Yellow
  Write-Host "  Example: /cine a detective in a rain-soaked luggage car"
  Write-Host ""
  Write-Host "If you want to install for a DIFFERENT tool, manually copy the files:"
  Write-Host "  Cursor:   Copy SKILL.md content into .cursorrules"
  Write-Host "  Windsurf: Copy SKILL.md content into .windsurfrules"
} else {
  Write-Host "Install failed. Check your network or install manually." -ForegroundColor Red
  exit 1
}

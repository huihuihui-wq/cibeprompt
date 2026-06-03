# CinePrompt Skill one-liner installer (Windows PowerShell)
# Usage 1: irm https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.ps1 | iex
# Usage 2: Local execution .\install.ps1

$ErrorActionPreference = 'Stop'

$Repo = 'https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main'
$Base = Join-Path $env:USERPROFILE '.config\opencode'
$SkillDir = Join-Path $Base 'skills\cibeprompt'
$CmdDir = Join-Path $Base 'commands'

Write-Host "Installing CinePrompt..." -ForegroundColor Cyan

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
  Write-Host "CinePrompt installed successfully!" -ForegroundColor Green
  Write-Host ""
  Write-Host "  Skill: $SkillDir\SKILL.md"
  Write-Host "  Cmd  : $CmdDir\cine.md"
  Write-Host ""
  Write-Host "Restart OpenCode TUI to use /cine command." -ForegroundColor Yellow
  Write-Host ""
  Write-Host "  Example: /cine a detective in a rain-soaked luggage car"
} else {
  Write-Host "Install failed. Check your network or install manually." -ForegroundColor Red
  exit 1
}

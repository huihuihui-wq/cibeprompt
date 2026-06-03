# CinePrompt Skill 一键安装脚�?(Windows PowerShell)
# 用法 1: irm https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/install.ps1 | iex
# 用法 2: 本地执行 .\install.ps1

$ErrorActionPreference = 'Stop'

$Repo = 'https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main'
$Base = Join-Path $env:USERPROFILE '.config\opencode'
$SkillDir = Join-Path $Base 'skills\cineprompt'
$CmdDir = Join-Path $Base 'commands'

Write-Host "🎬 Installing CinePrompt..." -ForegroundColor Cyan

# 创建目录
foreach ($p in @($SkillDir, $CmdDir)) {
  if (-not (Test-Path -LiteralPath $p)) {
    New-Item -ItemType Directory -Path $p -Force | Out-Null
  }
}

# 下载 SKILL.md
Write-Host "  �?Downloading SKILL.md..." -ForegroundColor Gray
Invoke-WebRequest -Uri "$Repo/skills/cineprompt/SKILL.md" `
  -OutFile (Join-Path $SkillDir 'SKILL.md') -UseBasicParsing

# 下载 cine.md
Write-Host "  �?Downloading cine.md..." -ForegroundColor Gray
Invoke-WebRequest -Uri "$Repo/commands/cine.md" `
  -OutFile (Join-Path $CmdDir 'cine.md') -UseBasicParsing

# 验证
$skillOk = Test-Path -LiteralPath (Join-Path $SkillDir 'SKILL.md')
$cmdOk = Test-Path -LiteralPath (Join-Path $CmdDir 'cine.md')

if ($skillOk -and $cmdOk) {
  Write-Host ""
  Write-Host "�?CinePrompt 安装成功�? -ForegroundColor Green
  Write-Host ""
  Write-Host "  Skill: $SkillDir\SKILL.md"
  Write-Host "  Cmd  : $CmdDir\cine.md"
  Write-Host ""
  Write-Host "重启 OpenCode TUI 即可使用 /cine 命令�? -ForegroundColor Yellow
  Write-Host ""
  Write-Host "  示例: /cine 一个悲伤的女人靠在窗边"
} else {
  Write-Host "�?安装失败，请检查网络或手动安装�? -ForegroundColor Red
  exit 1
}

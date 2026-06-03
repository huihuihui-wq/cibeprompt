# CinePrompt Skill 涓€閿畨瑁呰剼鏈?(Windows PowerShell)
# 鐢ㄦ硶 1: irm https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.ps1 | iex
# 鐢ㄦ硶 2: 鏈湴鎵ц .\install.ps1

$ErrorActionPreference = 'Stop'

$Repo = 'https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main'
$Base = Join-Path $env:USERPROFILE '.config\opencode'
$SkillDir = Join-Path $Base 'skills\cineprompt'
$CmdDir = Join-Path $Base 'commands'

Write-Host "馃幀 Installing CinePrompt..." -ForegroundColor Cyan

# 鍒涘缓鐩綍
foreach ($p in @($SkillDir, $CmdDir)) {
  if (-not (Test-Path -LiteralPath $p)) {
    New-Item -ItemType Directory -Path $p -Force | Out-Null
  }
}

# 涓嬭浇 SKILL.md
Write-Host "  鈫?Downloading SKILL.md..." -ForegroundColor Gray
Invoke-WebRequest -Uri "$Repo/skills/cineprompt/SKILL.md" `
  -OutFile (Join-Path $SkillDir 'SKILL.md') -UseBasicParsing

# 涓嬭浇 cine.md
Write-Host "  鈫?Downloading cine.md..." -ForegroundColor Gray
Invoke-WebRequest -Uri "$Repo/commands/cine.md" `
  -OutFile (Join-Path $CmdDir 'cine.md') -UseBasicParsing

# 楠岃瘉
$skillOk = Test-Path -LiteralPath (Join-Path $SkillDir 'SKILL.md')
$cmdOk = Test-Path -LiteralPath (Join-Path $CmdDir 'cine.md')

if ($skillOk -and $cmdOk) {
  Write-Host ""
  Write-Host "鉁?CinePrompt 瀹夎鎴愬姛锛? -ForegroundColor Green
  Write-Host ""
  Write-Host "  Skill: $SkillDir\SKILL.md"
  Write-Host "  Cmd  : $CmdDir\cine.md"
  Write-Host ""
  Write-Host "閲嶅惎 OpenCode TUI 鍗冲彲浣跨敤 /cine 鍛戒护銆? -ForegroundColor Yellow
  Write-Host ""
  Write-Host "  绀轰緥: /cine 涓€涓偛浼ょ殑濂充汉闈犲湪绐楄竟"
} else {
  Write-Host "鉂?瀹夎澶辫触锛岃妫€鏌ョ綉缁滄垨鎵嬪姩瀹夎銆? -ForegroundColor Red
  exit 1
}

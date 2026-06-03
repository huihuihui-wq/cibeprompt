# cibeprompt 一键推送到 GitHub
# 用法: 双击运行，或在 PowerShell 中执行 .\push.ps1

$ErrorActionPreference = 'Stop'
$username = 'huihuihui-wq'
$repoName = 'cibeprompt'
$repoUrl = "https://github.com/$username/$repoName.git"
$root = $PSScriptRoot

Write-Host ""
Write-Host "🎬 Pushing cibeprompt to GitHub..." -ForegroundColor Cyan
Write-Host "   Repo: $repoUrl" -ForegroundColor Gray
Write-Host ""

# 设置 remote（如未设置）
$existingRemote = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0 -or $existingRemote -ne $repoUrl) {
  if ($existingRemote) { git remote remove origin }
  git remote add origin $repoUrl
  Write-Host "  [OK] remote set to $repoUrl" -ForegroundColor Green
} else {
  Write-Host "  [OK] remote already set" -ForegroundColor Green
}

Write-Host ""
Write-Host "🚀 Pushing to origin/main..." -ForegroundColor Yellow
Write-Host "   (如有弹窗请输入 GitHub 用户名 + Personal Access Token)" -ForegroundColor Gray
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
  Write-Host ""
  Write-Host "✅ Push successful!" -ForegroundColor Green
  Write-Host ""
  Write-Host "============================================" -ForegroundColor Cyan
  Write-Host "  Next: enable GitHub Pages" -ForegroundColor Cyan
  Write-Host "============================================" -ForegroundColor Cyan
  Write-Host ""
  Write-Host "  1. 打开: https://github.com/$username/$repoName/settings/pages"
  Write-Host "  2. Source: Deploy from a branch"
  Write-Host "  3. Branch: main  /  (root)"
  Write-Host "  4. 点击 Save"
  Write-Host ""
  Write-Host "  等待 1-2 分钟，访问首页:" -ForegroundColor Yellow
  Write-Host "  https://$username.github.io/$repoName/" -ForegroundColor Yellow
  Write-Host ""
} else {
  Write-Host ""
  Write-Host "❌ Push failed" -ForegroundColor Red
  Write-Host ""
  Write-Host "可能原因:" -ForegroundColor Yellow
  Write-Host "  1. 仓库不存在 → 去 https://github.com/new 创建 $repoName 仓库"
  Write-Host "  2. 凭据失效 → 重新生成 Token: https://github.com/settings/tokens"
  Write-Host "  3. 网络问题 → 检查代理 / VPN"
  Write-Host ""
  exit 1
}

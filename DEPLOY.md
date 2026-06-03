# 🚀 部署指南

> 把 `D:\L\CinePrompt Skill\` 部署到 GitHub Pages，3 步上线。

## 0. 前置条件

- 已有 [GitHub](https://github.com) 账号（用户名 `huihuihui-wq`）
- 本机已装 [Git](https://git-scm.com)
- 本机已装 [OpenCode](https://opencode.ai)（可选，用于测试）

## 1. 在 GitHub 创建仓库

打开 https://github.com/new ，填写：

| 字段 | 值 |
|------|-----|
| Repository name | `cibeprompt` |
| Description | `🎬 AI 视频摄影提示词工程专家 · 中英双版运镜提示词` |
| Public / Private | **Public**（让其他人能用） |
| Add README | ❌ 不勾（我们已有） |
| Add .gitignore | ❌ 不勾（我们已有） |
| License | ❌ 不勾（我们已有 MIT） |

点 **Create repository**。

## 2. 推送代码

打开 PowerShell，进入 `D:\L\CinePrompt Skill\`：

```powershell
cd "D:\L\CinePrompt Skill"

# 初始化 git
git init
git add .
git commit -m "🎬 initial commit: cibeprompt v3.0.0"

# 关联远程仓库（替换 huihuihui-wq 为你的用户名）
git remote add origin https://github.com/huihuihui-wq/cibeprompt.git

# 推送
git branch -M main
git push -u origin main
```

如果弹出登录框，用 GitHub Personal Access Token 登录（[生成方法](https://github.com/settings/tokens)）。

## 3. 启用 GitHub Pages

在 GitHub 仓库页面：

1. 点 **Settings** 标签
2. 左侧菜单找到 **Pages**
3. Source 选 **Deploy from a branch**
4. Branch 选 **main** / **/ (root)**
5. 点 **Save**

或者使用 **GitHub Actions**（更可靠）：

1. 确保 `.github/workflows/pages.yml` 已存在（已包含在仓库中）
2. Settings → Pages → Source: **GitHub Actions**
3. push 到 main 分支后自动部署

等待 1-2 分钟，访问：

```
https://huihuihui-wq.github.io/cibeprompt/
```

就能看到你的项目展示页了。

---

## 4. 测试 OpenCode 安装

打开 OpenCode TUI，发送：

```
Install CinePrompt skill by following https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/INSTALL.md
```

OpenCode 会自动：

1. 拉取 `INSTALL.md`
2. 执行里面的步骤
3. 下载 `SKILL.md` 和 `cine.md` 到 `~/.config/opencode/`

然后测试：

```
/cine 一个赛博朋克雨夜场景
```

应输出中英双版提示词。

---

## 5. 持续添加案例

后续添加新案例，只需：

1. 编辑 `data/examples.json`，在数组里加一个对象：

```json
{
  "id": "my-new-scene",
  "title": {"zh": "我的场景", "en": "My Scene"},
  "description": "一句话描述",
  "prompt_zh": "中文提示词...",
  "prompt_en": "English prompt...",
  "style": "cinematic",
  "duration": "8s",
  "tags": ["tag1", "tag2"]
}
```

2. 提交：

```powershell
git add data\examples.json
git commit -m "📝 add new example: my-new-scene"
git push
```

3. GitHub Pages 自动重新部署，1 分钟后案例画廊自动显示新条目。

---

## 🔧 常见问题

### Q: 推送时要求输入用户名密码？
A: GitHub 不再支持密码推送。生成一个 [Personal Access Token](https://github.com/settings/tokens/new)，选 `repo` 权限，用 token 当密码。

### Q: GitHub Pages 没更新？
A: Settings → Pages 底部查看部署状态。绿色 ✅ 表示成功，红色 ❌ 看错误日志。

### Q: 案例画廊一直显示"Loading..."？
A: 检查 `data/examples.json` 是否是合法 JSON（用 https://jsonlint.com 验证）。注意最后一项后**不要有逗号**。

### Q: 看到的中文乱码？
A: 所有文件已使用 UTF-8 无 BOM 编码。如果浏览器乱码，强制刷新（Ctrl+F5）清除缓存。

### Q: 想换主题色？
A: 编辑 `index.html` 顶部的 `tailwind.config`，修改 `cinema.gold` 和 `cinema.goldBright` 即可。

---

## 📋 文件清单确认

部署前确认 `D:\L\CinePrompt Skill\` 目录有：

```
D:\L\CinePrompt Skill\
├── index.html              ← 主页面（GitHub Pages 入口）
├── data\
│   └── examples.json       ← 案例数据
├── skills\cibeprompt\
│   └── SKILL.md            ← Skill 主体
├── commands\
│   └── cine.md             ← /cine 命令
├── install.sh              ← Mac/Linux 安装脚本
├── install.ps1             ← Windows 安装脚本
├── INSTALL.md              ← OpenCode 自动读取
├── README.md               ← 仓库说明
├── DEPLOY.md               ← 你正在看的
├── SKILL.md                ← Skill 完整规范副本
├── LICENSE                 ← MIT 许可证
└── .github\workflows\
    └── pages.yml           ← GitHub Actions 部署
```

全部就位 → 推送 → 启用 Pages → 上线！

<div align="center">

# 🎬 CinePrompt

**Every creative vision, precisely visualized.**

专业的 AI 视频摄影提示词工程专家 · 输出中英双版电影级运镜提示词

[⚡ 一键安装](#-一键安装) · [🎥 案例画廊](#-案例画廊) · [📖 完整文档](INSTALL.md) · [⭐ Star this](https://github.com/huihuihui-wq/cibeprompt)

</div>

---

## 这是什么？

CinePrompt 是一款 **AI 视频摄影提示词工程专家**。你描述场景、情绪、氛围，它输出精确的**电影级运镜提示词**，中英双版，可直接粘贴到任何 AI 视频平台。

### ✨ 核心特性

- 🎥 **10 种运镜** — 推近、拉远、横移、跟拍、环绕、升降、手持、航拍、快速横摇、焦点转移
- 🎨 **10 种风格锚点** — 电影 · 赛博朋克 · 吉卜力 · 复古 · 极简奢华 · 治愈 · 悬疑 · 梦幻 · 纪录片 · 商业
- 🌍 **中英双版** — 独立可复制，零翻译损耗
- 🎬 **多镜头分镜** — 自动拆分场景，量化每个镜头的参数
- ⚡ **平台通用** — 兼容 Veo3 / Sora / Runway / Kling / 可灵 / 即梦 / Pika / Luma / Hailuo

---

## ⚡ 一键安装

### 方式 1：让 OpenCode 帮你装（推荐）

在 OpenCode TUI 里直接说：

> Install CinePrompt skill by following https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/INSTALL.md

OpenCode 会自动拉取安装说明并执行。

### 方式 2：一行命令

```bash
# Mac / Linux
curl -fsSL https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.sh | bash

# Windows (PowerShell)
irm https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/install.ps1 | iex
```

### 方式 3：手动安装

```bash
# 1. Skill 主体
mkdir -p ~/.config/opencode/skills/cibeprompt
curl -o ~/.config/opencode/skills/cibeprompt/SKILL.md \
  https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/skills/cibeprompt/SKILL.md

# 2. /cine 命令
mkdir -p ~/.config/opencode/commands
curl -o ~/.config/opencode/commands/cine.md \
  https://raw.githubusercontent.com/huihuihui-wq/cibeprompt/main/commands/cine.md

# 3. 重启 OpenCode TUI
```

---

## 🚀 使用

```bash
# 方式 A：在 OpenCode TUI 输入
/cine 古城南门外，城墙上"刘"字军旗飘扬，午后逆光，车轮扬尘

# 方式 B：直接描述场景（自动触发）
帮我做一段视频：古城南门外，午后逆光，车轮扬尘，马蹄声渐近
```

**输出示例**：

> 我是AI视频提示词助手。
>
> ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
> 📋 中文提示词（点击右上角 📋 复制）
> ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
>
> 【镜头一 00:00-00:03】远景建立，低角度仰拍古城南门……
>
> ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
> 📋 English Prompt (Click 📋 to copy)
> ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
>
> [Shot 1 00:00-00:03] Establishing wide shot, low angle looking up at ancient city south gate……

---

## 🎥 案例画廊

查看完整的案例集合：[`data/examples.json`](data/examples.json)

提交你的案例：编辑 `data/examples.json`，提交 PR 即可。

---

## 🧠 工作原理

| 用户说 | 我理解为 | 我输出 |
|--------|---------|--------|
| "cinematic" | 质感、深度、叙事 | 35mm 胶片、浅景深、暖色调 |
| "dynamic" | 速度、流动、冲击 | 贴地飞行、手持呼吸、急速横摇 |
| "highlight subject" | 焦点、层次、引导 | 推近特写、虚化背景、轮廓光 |
| "storytelling" | 变化、弧线、情绪 | 多镜头分镜、反打镜头、焦点转移 |

详细规范见 [`SKILL.md`](SKILL.md)。

---

## 📁 仓库结构

```
cibeprompt/
├── index.html              # 项目展示页（GitHub Pages）
├── data/
│   └── examples.json       # 案例数据（动态加载）
├── skills/
│   └── cibeprompt/
│       └── SKILL.md        # Skill 主体（被 OpenCode 加载）
├── commands/
│   └── cine.md             # /cine 命令定义
├── install.sh              # Mac/Linux 一键安装
├── install.ps1             # Windows 一键安装
├── INSTALL.md              # 给 OpenCode 看的安装说明
├── README.md               # 你正在看的
├── SKILL.md                # Skill 完整规范
├── LICENSE                 # MIT
└── DEPLOY.md               # GitHub Pages 部署指南
```

---

## 🛠️ 平台兼容性

| 平台 | 状态 | 备注 |
|------|------|------|
| [OpenCode](https://opencode.ai) | ✅ | 原生 /cine 命令 |
| [Claude Code](https://claude.com/claude-code) | ✅ | 复制 SKILL.md 到 `~/.claude/skills/cibeprompt/` |
| [Codex CLI](https://openai.com/index/openai-codex-cli) | ✅ | 复制到 `~/.codex/skills/cibeprompt/` |
| Cursor | ⚠️ | 改写为 `.cursorrules` 格式 |
| Windsurf | ⚠️ | 改写为 `.windsurfrules` 格式 |

---

## 🤝 贡献

欢迎提交：

- 新的提示词案例（PR 到 `data/examples.json`）
- 新的风格锚点
- 多语言翻译
- Bug 报告

---

## 📜 许可证

MIT © 2026 [huihuihui-wq](https://github.com/huihuihui-wq)

---

<div align="center">

**[⭐ Star](https://github.com/huihuihui-wq/cibeprompt)** · **[🍴 Fork](https://github.com/huihuihui-wq/cibeprompt/fork)** · **[📝 Issue](https://github.com/huihuihui-wq/cibeprompt/issues)**

</div>

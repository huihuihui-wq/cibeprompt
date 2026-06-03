<div align="center">

# 🎬 CinePrompt

**Every creative vision, precisely visualized.**

专业�?AI 视频摄影提示词工程专�?· 输出中英双版电影级运镜提示词

[�?一键安装](#-一键安�? · [🎥 案例画廊](#-案例画廊) · [📖 完整文档](INSTALL.md) · [�?Star this](https://github.com/huihuihui-wq/cineprompt-skill)

</div>

---

## 这是什么？

CinePrompt 是一�?**AI 视频摄影提示词工程专�?*。你描述场景、情绪、氛围，它输出精确的**电影级运镜提示词**，中英双版，可直接粘贴到任何 AI 视频平台�?
### �?核心特�?
- 🎥 **10 种运�?* �?推近、拉远、横移、跟拍、环绕、升降、手持、航拍、快速横摇、焦点转�?- 🎨 **10 种风格锚�?* �?电影 · 赛博朋克 · 吉卜�?· 复古 · 极简奢华 · 治愈 · 悬疑 · 梦幻 · 纪录�?· 商业
- 🌍 **中英双版** �?独立可复制，零翻译损�?- 🎬 **多镜头分�?* �?自动拆分场景，量化每个镜头的参数
- �?**平台通用** �?兼容 Veo3 / Sora / Runway / Kling / 可灵 / 即梦 / Pika / Luma / Hailuo

---

## �?一键安�?
### 方式 1：让 OpenCode 帮你装（推荐�?
�?OpenCode TUI 里直接说�?
> Install CinePrompt skill by following https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/INSTALL.md

OpenCode 会自动拉取安装说明并执行�?
### 方式 2：一行命�?
```bash
# Mac / Linux
curl -fsSL https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/install.sh | bash

# Windows (PowerShell)
irm https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/install.ps1 | iex
```

### 方式 3：手动安�?
```bash
# 1. Skill 主体
mkdir -p ~/.config/opencode/skills/cineprompt
curl -o ~/.config/opencode/skills/cineprompt/SKILL.md \
  https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/SKILL.md

# 2. /cine 命令
mkdir -p ~/.config/opencode/commands
curl -o ~/.config/opencode/commands/cine.md \
  https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/commands/cine.md

# 3. 重启 OpenCode TUI
```

---

## 🚀 使用

```bash
# 方式 A：在 OpenCode TUI 输入
/cine 古城南门外，城墙�?�?字军旗飘扬，午后逆光，车轮扬�?
# 方式 B：直接描述场景（自动触发�?帮我做一段视频：古城南门外，午后逆光，车轮扬尘，马蹄声渐�?```

**输出示例**�?
> 我是AI视频提示词助手�?>
> ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━�?> 📋 中文提示词（点击右上�?📋 复制�?> ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━�?>
> 【镜头一 00:00-00:03】远景建立，低角度仰拍古城南门…�?>
> ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━�?> 📋 English Prompt (Click 📋 to copy)
> ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━�?>
> [Shot 1 00:00-00:03] Establishing wide shot, low angle looking up at ancient city south gate…�?
---

## 🎥 案例画廊

查看完整的案例集合：[`data/examples.json`](data/examples.json)

提交你的案例：编�?`data/examples.json`，提�?PR 即可�?
---

## 🧠 工作原理

| 用户�?| 我理解为 | 我输�?|
|--------|---------|--------|
| "cinematic" | 质感、深度、叙�?| 35mm 胶片、浅景深、暖色调 |
| "dynamic" | 速度、流动、冲�?| 贴地飞行、手持呼吸、急速横�?|
| "highlight subject" | 焦点、层次、引�?| 推近特写、虚化背景、轮廓光 |
| "storytelling" | 变化、弧线、情�?| 多镜头分镜、反打镜头、焦点转�?|

详细规范�?[`SKILL.md`](SKILL.md)�?
---

## 📁 仓库结构

```
cineprompt-skill/
├── index.html              # 项目展示页（GitHub Pages�?├── data/
�?  └── examples.json       # 案例数据（动态加载）
├── skills/
�?  └── cineprompt/
�?      └── SKILL.md        # Skill 主体（被 OpenCode 加载�?├── commands/
�?  └── cine.md             # /cine 命令定义
├── install.sh              # Mac/Linux 一键安�?├── install.ps1             # Windows 一键安�?├── INSTALL.md              # �?OpenCode 看的安装说明
├── README.md               # 你正在看�?├── SKILL.md                # Skill 完整规范
├── LICENSE                 # MIT
└── DEPLOY.md               # GitHub Pages 部署指南
```

---

## 🛠�?平台兼容�?
| 平台 | 状�?| 备注 |
|------|------|------|
| [OpenCode](https://opencode.ai) | �?| 原生 /cine 命令 |
| [Claude Code](https://claude.com/claude-code) | �?| 复制 SKILL.md �?`~/.claude/skills/cineprompt/` |
| [Codex CLI](https://openai.com/index/openai-codex-cli) | �?| 复制�?`~/.codex/skills/cineprompt/` |
| Cursor | ⚠️ | 改写�?`.cursorrules` 格式 |
| Windsurf | ⚠️ | 改写�?`.windsurfrules` 格式 |

---

## 🤝 贡献

欢迎提交�?- 新的提示词案例（PR �?`data/examples.json`�?- 新的风格锚点
- 多语言翻译
- Bug 报告

---

## 📜 许可�?
MIT © 2026 [huihuihui-wq](https://github.com/huihuihui-wq)

---

<div align="center">

**[�?Star](https://github.com/huihuihui-wq/cineprompt-skill)** · **[🍴 Fork](https://github.com/huihuihui-wq/cineprompt-skill/fork)** · **[📝 Issue](https://github.com/huihuihui-wq/cineprompt-skill/issues)**

</div>

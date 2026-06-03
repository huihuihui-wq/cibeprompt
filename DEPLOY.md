# 🚀 部署指南

> �?`D:\L\CinePrompt Skill\` 部署�?GitHub Pages�? 步上线�?
## 0. 前置条件

- 已有 [GitHub](https://github.com) 账号（用户名 `huihuihui-wq`�?- 本机已装 [Git](https://git-scm.com)
- 本机已装 [OpenCode](https://opencode.ai)（可选，用于测试�?
## 1. �?GitHub 创建仓库

打开 https://github.com/new ，填写：

| 字段 | �?|
|------|-----|
| Repository name | `cineprompt-skill` |
| Description | `🎬 AI 视频摄影提示词工程专�?· 中英双版运镜提示词` |
| Public / Private | **Public**（让其他人能用） |
| Add README | �?不勾（我们已有） |
| Add .gitignore | �?不勾（我们已有） |
| License | �?不勾（我们已�?MIT�?|

�?**Create repository**�?
## 2. 推送代�?
打开 PowerShell，进�?`D:\L\CinePrompt Skill\`�?
```powershell
cd "D:\L\CinePrompt Skill"

# 初始�?git
git init
git add .
git commit -m "🎬 initial commit: CinePrompt v3.0.0"

# 关联远程仓库（替�?huihuihui-wq 为你的用户名�?git remote add origin https://github.com/huihuihui-wq/cineprompt-skill.git

# 推�?git branch -M main
git push -u origin main
```

如果弹出登录框，�?GitHub Personal Access Token 登录（[生成方法](https://github.com/settings/tokens)）�?
## 3. 启用 GitHub Pages

�?GitHub 仓库页面�?
1. �?**Settings** 标签
2. 左侧菜单找到 **Pages**
3. Source �?**Deploy from a branch**
4. Branch �?**main** / **/ (root)**
5. �?**Save**

等待 1-2 分钟，访问：

```
https://huihuihui-wq.github.io/cineprompt-skill/
```

就能看到你的项目展示页了�?
---

## 4. 测试 OpenCode 安装

打开 OpenCode TUI，发送：

```
Install CinePrompt skill by following https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/INSTALL.md
```

OpenCode 会自动：
1. 拉取 `INSTALL.md`
2. 执行里面的步�?3. 下载 `SKILL.md` �?`cine.md` �?`~/.config/opencode/`

然后测试�?
```
/cine 一个赛博朋克雨夜场�?```

应输出中英双版提示词�?
---

## 5. 持续添加案例

后续添加新案例，只需�?
1. 编辑 `data/examples.json`，在数组里加一个对象：

```json
{
  "id": "my-new-scene",
  "title": {"zh": "我的场景", "en": "My Scene"},
  "description": "一句话描述",
  "prompt_zh": "中文提示�?..",
  "prompt_en": "English prompt...",
  "style": "cinematic",
  "duration": "8s",
  "tags": ["tag1", "tag2"]
}
```

2. 提交�?
```powershell
git add data/examples.json
git commit -m "📝 add new example: my-new-scene"
git push
```

3. GitHub Pages 自动重新部署�? 分钟后案例画廊自动显示新条目�?
---

## 🔧 常见问题

### Q: 推送时要求输入用户名密码？
A: GitHub 不再支持密码推送。生成一�?[Personal Access Token](https://github.com/settings/tokens/new)，�?`repo` 权限，用 token 当密码�?
### Q: GitHub Pages 没更新？
A: Settings �?Pages 底部查看部署状态。绿�?�?表示成功，红�?�?看错误日志�?
### Q: 案例画廊一直显�?Loading..."�?A: 检�?`data/examples.json` 是否是合�?JSON（用 https://jsonlint.com 验证）。注意最后一项后**不要有逗号**�?
### Q: 想换主题色？
A: 编辑 `index.html` 顶部�?`tailwind.config`，修�?`cinema.gold` �?`cinema.goldBright` 即可�?
---

## 📋 文件清单确认

部署前确�?`D:\L\CinePrompt Skill\` 目录有：

```
D:\L\CinePrompt Skill\
├── index.html              �?主页面（GitHub Pages 入口�?├── data\
�?  └── examples.json       �?案例数据
├── skills\cineprompt\
�?  └── SKILL.md            �?Skill 主体
├── commands\
�?  └── cine.md             �?/cine 命令
├── install.sh              �?Mac/Linux 安装脚本
├── install.ps1             �?Windows 安装脚本
├── INSTALL.md              �?OpenCode 自动读取
├── README.md               �?仓库说明
├── DEPLOY.md               �?你正在看�?├── SKILL.md                �?Skill 完整规范副本
└── LICENSE                 �?MIT 许可�?```

全部就位 �?推�?�?启用 Pages �?上线�?
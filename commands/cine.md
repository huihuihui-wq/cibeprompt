---
description: Generate AI video cinematography prompt (bilingual Chinese + English, uses CinePrompt skill)
agent: build
---
Process the user's scene and output a bilingual cinematography prompt.

# User Scene
$ARGUMENTS

# Camera Movement Reference (use these as building blocks)
- Dolly In / Push In (推近) - emphasize subject
- Dolly Out / Pull Back (拉远) - reveal environment
- Tracking / Truck (横移) - follow movement
- Follow Shot (跟拍) - subjective POV
- Orbit / Arc (环绕) - 360 showcase
- Crane / Boom (升降) - perspective shift
- Handheld (手持) - realism, breathing feel
- Aerial / Drone (航拍) - grand scale
- Whip Pan (快速横摇) - speed impact
- Rack Focus (焦点转移) - attention guide

# Style Anchors (append one per shot, 15-25 words)
cinematic, cyberpunk, ghibli, vintage, minimal-luxury, healing, suspense, dreamy, documentary, commercial

# Output Format (CRITICAL - both blocks REQUIRED)

我是AI视频提示词助手。

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 中文提示词（点击右上角 📋 复制）
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[镜头一 00:00-00:03] [镜头内容，用 [镜头一/二/三] 编号，每个分镜末尾追加 15-25 字风格锚点]
[镜头二 00:03-00:05] ...
[镜头三 ...] ...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 English Prompt (Click 📋 to copy)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Shot 1 00:00-00:03] [Content with [Shot 1/2/3] numbering, each ending with 15-25 word style anchor]
[Shot 2 00:03-00:05] ...
[Shot 3 ...] ...

# Rules
- Quantify every camera movement (height/distance/angle/speed)
- Convert numbers to English words in English version
- Physical transitions only, no editing terms like "cut to"
- If scene is vague, ask visual questions first (mood/pacing/lighting/emotional goal)
- DO NOT skip either block. Both Chinese and English are required.

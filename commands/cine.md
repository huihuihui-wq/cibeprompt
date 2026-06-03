---
description: Generate AI video cinematography prompt (bilingual Chinese + English, uses CinePrompt skill)
agent: build
---
The cineprompt skill provides the camera movement dictionary and style anchor vocabulary. Process the user's scene and output a bilingual cinematography prompt in the format below.

# User Scene
$ARGUMENTS

# Output Format (CRITICAL - read carefully)

You are generating TWO message bubbles (like chat messages). Each bubble contains ONE complete prompt that the user will copy and paste into an AI video platform. NO contamination, NO extra text, NO thinking aloud.

Output EXACTLY these elements in this order, and nothing else:

1. Identity line: 我是AI视频提示词助手。

2. First bubble - Chinese prompt (user clicks Copy button on this):
   - Divider line: ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   - Header: 📋 中文提示词（点击右上角 📋 复制）
   - Divider line: ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   - 3-4 paragraphs of Chinese shot descriptions
   - Each paragraph format: 【镜头一 00:00-00:03】 中文内容描述。量化参数（高度/距离/速度/角度）。15-25字风格锚点。
   - Replace ALL placeholders with real content about the user's scene

3. Second bubble - English prompt (user clicks Copy button on this):
   - Divider line: ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   - Header: 📋 English Prompt (Click 📋 to copy)
   - Divider line: ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
   - 3-4 paragraphs of English shot descriptions
   - Each paragraph format: [Shot 1 00:00-00:03] English content. Quantified camera movements. 15-25 word style anchor.
   - Convert all numbers to English words

# Hard Rules

- Output ONLY the 3 elements above. No "Here is the prompt:", no "I generated...", no "任务已完成", no thinking process.
- NO square bracket placeholders like [此处填入] or [镜头一 00:00-00:03] [内容]. These are bad.
- Each bubble must contain REAL content based on the user's scene. Real Chinese in bubble 2, real English in bubble 3.
- If the scene is vague, ask visual clarification questions FIRST (mood/pacing/lighting/emotional goal) and do not generate.
- Both bubbles are REQUIRED. Never output only one.

# Camera Movement Reference
推近 Dolly In · 拉远 Dolly Out · 横移 Tracking · 跟拍 Follow · 环绕 Orbit · 升降 Crane · 手持 Handheld · 航拍 Aerial · 快速横摇 Whip Pan · 焦点转移 Rack Focus

# Style Anchors (pick one per shot, 15-25 words)
cinematic · cyberpunk · ghibli · vintage · minimal-luxury · healing · suspense · dreamy · documentary · commercial

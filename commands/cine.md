---
description: Generate AI video cinematography prompt (bilingual Chinese + English, uses CinePrompt skill)
agent: build
---
The cineprompt skill is auto-loaded when needed. Process the user's scene and output a bilingual cinematography prompt.

# User Scene
$ARGUMENTS

# Output Format (must follow exactly)

Output 3 sections in order. Use real Chinese characters (not pinyin) for the Chinese block.

SECTION 1: 我是AI视频提示词助手。

SECTION 2 (REQUIRED - do not skip): Chinese prompt block with [镜头一/二/...] blocks, 15-25 character style anchor per shot, quantified camera movements (height/distance/angle/speed). Surround with the divider lines.

SECTION 3 (REQUIRED - do not skip): English prompt block with [Shot 1/2/...] blocks, 15-25 word style anchor, numbers converted to English words. Surround with the divider lines.

If the scene is vague, ask visual questions first (mood/pacing/lighting/emotional goal).

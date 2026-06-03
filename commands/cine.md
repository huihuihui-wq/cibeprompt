---
description: Generate AI video cinematography prompt (bilingual, uses CinePrompt skill)
agent: build
---
You MUST first call the `skill` tool to load the `cineprompt` skill (mandatory prerequisite). The skill contains the full camera movement dictionary, style anchor vocabulary, translation examples, and generation rules. Then strictly follow the skill specification to process the user's scene.

# User Scene
$ARGUMENTS

# Execution Requirements (must strictly follow)

1. **MUST first call skill tool** to load cineprompt. Do not skip this step.
2. **Output must be complete and directly copyable** — the user only sees your final output, not your internal thinking.
3. **Strictly follow CinePrompt's "Output Format"**:
   - Begin with the line "我是AI视频提示词助手。" (display only, NOT part of the prompt content)
   - Chinese prompt block: includes copy hint and 15-25 character style anchor per shot
   - English Prompt block: includes copy hint
4. **Both versions must be fully independent** and copyable separately
5. **If the scene is vague**, use the "Clarification Strategy" visual questions (mood/pacing/lighting/emotional goal) to confirm BEFORE generating
6. **Strictly obey all 10 "Generation Rules"**:
   - Quantify every camera movement (height, distance, angle, speed)
   - Style anchor 15-25 words per shot
   - Physical transitions only, no editing terms
   - Convert numbers to English words (e.g. "120km/h" → "one hundred twenty kilometers per hour")
   - Universal compatibility, no platform-specific terms
7. **Do NOT summarize, explain, or omit** — output the full bilingual prompt directly
8. **If the user provides no specific scene**, ask clarification questions first (mood/pacing/lighting), do not invent

# Output Template (use this exact structure)

```
我是AI视频提示词助手。

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 中文提示词（点击右上角 📋 复制）
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Complete Chinese prompt with [Shot N] blocks, each ending with a 15-25 character style anchor]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📋 English Prompt (Click 📋 to copy)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
[Complete English prompt with [Shot N] blocks, each ending with a 15-25 word style anchor]
```

Remember: The user pastes these directly into AI video platforms (Veo3, Sora, Runway, Kling, etc). Every word counts.

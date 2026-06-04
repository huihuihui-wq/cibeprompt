---
description: Generate AI video cinematography prompt (English, uses CinePrompt skill)
agent: build
---
The cineprompt skill provides the camera movement dictionary and style anchor vocabulary. Process the user's scene and output a single English cinematography prompt.

# User Scene
$ARGUMENTS

# Output Format (CRITICAL)

Output ONLY one English prompt wrapped in a markdown fenced code block (so OpenCode TUI renders it as a clickable-style code block that the user can mouse-select and copy). No preamble. No explanation. No "Here is the prompt:". No "任务已完成".

Format (the FIRST line MUST be *Style Text:*, the LAST line is the final shot — every part is REQUIRED content, not an example):
```
*Style Text:* [REQUIRED — 15-25 word overall style anchor: medium + color palette + lighting + texture + atmosphere. Pick one from the Style Anchor Vocabulary and expand. e.g. "Suspense noir, cold cyan tones with deep black shadows, hard directional key light, 35mm film grain, rain-streaked backlit windows, chiaroscuro cinematography, clinical forensic atmosphere."]

[Shot 1 HH:MM-HH:MM]
[REQUIRED — real description of what happens in shot 1, in plain English, based on the user's scene]
Camera: [REQUIRED — quantified movements: height in meters/cm, distance in meters, speed in m/s or degrees]
Style anchor: [REQUIRED — 15-25 word anchor, consistent with *Style Text:* above]

[Shot 2 HH:MM-HH:MM]
[REQUIRED — shot 2 content]
Camera: [REQUIRED — quantified movements]
Style anchor: [REQUIRED — 15-25 words]

[Shot 3 HH:MM-HH:MM]
[REQUIRED — shot 3 content]
Camera: [REQUIRED — quantified movements]
Style anchor: [REQUIRED — 15-25 words]

(Add 2-4 shots total. Every [REQUIRED ...] placeholder MUST be replaced with real content about the user's scene.)
```

# Hard Rules

- Output ONLY the markdown code block. Nothing before or after. No "Here is your prompt:". No thinking aloud.
- NO placeholders like [Shot 1] [content here] or [此处填入]. The fenced code block above is a FORMAT example, not literal content.
- Convert all numbers to English words: "120km/h" -> "one hundred twenty kilometers per hour". "30cm" -> "thirty centimeters". "2m" -> "two meters".
- NO Chinese characters anywhere in the output. The user's scene input may be in any language; the output prompt is always English.
- Quantify every camera movement (height, distance, angle, speed).
- Style anchor 15-25 words per shot to prevent visual drift.
- If the scene is vague, ask visual clarification questions FIRST (mood/pacing/lighting/emotional goal) and do not generate.

# Camera Movement Vocabulary

Dolly In (push in) · Dolly Out (pull back) · Tracking (truck) · Follow Shot · Orbit (arc) · Crane (boom) · Handheld · Aerial (drone) · Whip Pan · Rack Focus

# Style Anchor Vocabulary (pick one per shot, 15-25 words)

cinematic · cyberpunk · ghibli · vintage · minimal-luxury · healing · suspense · dreamy · documentary · commercial

Each style expands to specific technical terms when applied. For example:
- cinematic -> "35mm film, shallow depth of field, natural light, warm tones"
- cyberpunk -> "neon lighting, rainy night, cold tones, high contrast"
- vintage -> "warm tones, film grain, faded effect, nostalgic"
- ghibli -> "hand-painted texture, enhanced saturation, bluer sky"
- minimal-luxury -> "rim light, metallic texture, minimal composition"
- healing -> "soft light, natural elements, slow pace, comforting"
- suspense -> "hard light, deep shadows, local lighting, tension"
- dreamy -> "overexposure, hazy, shallow depth of field, pastel"
- documentary -> "natural light, handheld shake, candid capture"
- commercial -> "4K ultra-clear, high saturation, product close-up"

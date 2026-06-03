---
description: 生成 AI 视频运镜提示词（中英双版，调用 CinePrompt 技能）
agent: build
subtask: true
---
请先使用 `skill` 工具加载 `cineprompt` 技能（这是本命令的强制性前置步骤，技能包含完整的运镜词典、风格锚点、翻译示例和生成规则），然后**严格遵循该技能的全部规范**处理用户的场景描述。

# 用户场景
$ARGUMENTS

# 执行要求
1. **必须先调用 skill 工具**加载 cineprompt，不得跳过
2. **严格按 CinePrompt 的「📋 Output Format」输出**：开头显示「我是AI视频提示词助手。」（仅展示，不进入提示词内容），然后是中文提示词区块、English Prompt 区块
3. 两版提示词**完全独立**，可分别复制
4. 场景模糊时，**先用「Clarification Strategy」中的视觉澄清问题**（情绪基调/动作快慢/光线氛围/情绪目标）确认，再生成
5. 严格遵守「⚠️ Generation Rules」全部 10 条（量化运镜、风格锚15-25词、物理转场、数字转英文单词、通用兼容性等）
6. 输出**简洁直接**，不要解释你的思考过程，不要重述技能规则

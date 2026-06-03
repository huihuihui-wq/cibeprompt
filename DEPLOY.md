# 馃殌 閮ㄧ讲鎸囧崡

> 鎶?`D:\L\CinePrompt Skill\` 閮ㄧ讲鍒?GitHub Pages锛? 姝ヤ笂绾裤€?
## 0. 鍓嶇疆鏉′欢

- 宸叉湁 [GitHub](https://github.com) 璐﹀彿锛堢敤鎴峰悕 `huihuihui-wq`锛?- 鏈満宸茶 [Git](https://git-scm.com)
- 鏈満宸茶 [OpenCode](https://opencode.ai)锛堝彲閫夛紝鐢ㄤ簬娴嬭瘯锛?
## 1. 鍦?GitHub 鍒涘缓浠撳簱

鎵撳紑 https://github.com/new 锛屽～鍐欙細

| 瀛楁 | 鍊?|
|------|-----|
| Repository name | `cineprompt-skill` |
| Description | `馃幀 AI 瑙嗛鎽勫奖鎻愮ず璇嶅伐绋嬩笓瀹?路 涓嫳鍙岀増杩愰暅鎻愮ず璇峘 |
| Public / Private | **Public**锛堣鍏朵粬浜鸿兘鐢級 |
| Add README | 鉂?涓嶅嬀锛堟垜浠凡鏈夛級 |
| Add .gitignore | 鉂?涓嶅嬀锛堟垜浠凡鏈夛級 |
| License | 鉂?涓嶅嬀锛堟垜浠凡鏈?MIT锛?|

鐐?**Create repository**銆?
## 2. 鎺ㄩ€佷唬鐮?
鎵撳紑 PowerShell锛岃繘鍏?`D:\L\CinePrompt Skill\`锛?
```powershell
cd "D:\L\CinePrompt Skill"

# 鍒濆鍖?git
git init
git add .
git commit -m "馃幀 initial commit: CinePrompt v3.0.0"

# 鍏宠仈杩滅▼浠撳簱锛堟浛鎹?huihuihui-wq 涓轰綘鐨勭敤鎴峰悕锛?git remote add origin https://github.com/huihuihui-wq/cineprompt-skill.git

# 鎺ㄩ€?git branch -M main
git push -u origin main
```

濡傛灉寮瑰嚭鐧诲綍妗嗭紝鐢?GitHub Personal Access Token 鐧诲綍锛圼鐢熸垚鏂规硶](https://github.com/settings/tokens)锛夈€?
## 3. 鍚敤 GitHub Pages

鍦?GitHub 浠撳簱椤甸潰锛?
1. 鐐?**Settings** 鏍囩
2. 宸︿晶鑿滃崟鎵惧埌 **Pages**
3. Source 閫?**Deploy from a branch**
4. Branch 閫?**main** / **/ (root)**
5. 鐐?**Save**

绛夊緟 1-2 鍒嗛挓锛岃闂細

```
https://huihuihui-wq.github.io/cineprompt-skill/
```

灏辫兘鐪嬪埌浣犵殑椤圭洰灞曠ず椤典簡銆?
---

## 4. 娴嬭瘯 OpenCode 瀹夎

鎵撳紑 OpenCode TUI锛屽彂閫侊細

```
Install CinePrompt skill by following https://raw.githubusercontent.com/huihuihui-wq/cineprompt-skill/main/INSTALL.md
```

OpenCode 浼氳嚜鍔細
1. 鎷夊彇 `INSTALL.md`
2. 鎵ц閲岄潰鐨勬楠?3. 涓嬭浇 `SKILL.md` 鍜?`cine.md` 鍒?`~/.config/opencode/`

鐒跺悗娴嬭瘯锛?
```
/cine 涓€涓禌鍗氭湅鍏嬮洦澶滃満鏅?```

搴旇緭鍑轰腑鑻卞弻鐗堟彁绀鸿瘝銆?
---

## 5. 鎸佺画娣诲姞妗堜緥

鍚庣画娣诲姞鏂版渚嬶紝鍙渶锛?
1. 缂栬緫 `data/examples.json`锛屽湪鏁扮粍閲屽姞涓€涓璞★細

```json
{
  "id": "my-new-scene",
  "title": {"zh": "鎴戠殑鍦烘櫙", "en": "My Scene"},
  "description": "涓€鍙ヨ瘽鎻忚堪",
  "prompt_zh": "涓枃鎻愮ず璇?..",
  "prompt_en": "English prompt...",
  "style": "cinematic",
  "duration": "8s",
  "tags": ["tag1", "tag2"]
}
```

2. 鎻愪氦锛?
```powershell
git add data/examples.json
git commit -m "馃摑 add new example: my-new-scene"
git push
```

3. GitHub Pages 鑷姩閲嶆柊閮ㄧ讲锛? 鍒嗛挓鍚庢渚嬬敾寤婅嚜鍔ㄦ樉绀烘柊鏉＄洰銆?
---

## 馃敡 甯歌闂

### Q: 鎺ㄩ€佹椂瑕佹眰杈撳叆鐢ㄦ埛鍚嶅瘑鐮侊紵
A: GitHub 涓嶅啀鏀寔瀵嗙爜鎺ㄩ€併€傜敓鎴愪竴涓?[Personal Access Token](https://github.com/settings/tokens/new)锛岄€?`repo` 鏉冮檺锛岀敤 token 褰撳瘑鐮併€?
### Q: GitHub Pages 娌℃洿鏂帮紵
A: Settings 鈫?Pages 搴曢儴鏌ョ湅閮ㄧ讲鐘舵€併€傜豢鑹?鉁?琛ㄧず鎴愬姛锛岀孩鑹?鉂?鐪嬮敊璇棩蹇椼€?
### Q: 妗堜緥鐢诲粖涓€鐩存樉绀?Loading..."锛?A: 妫€鏌?`data/examples.json` 鏄惁鏄悎娉?JSON锛堢敤 https://jsonlint.com 楠岃瘉锛夈€傛敞鎰忔渶鍚庝竴椤瑰悗**涓嶈鏈夐€楀彿**銆?
### Q: 鎯虫崲涓婚鑹诧紵
A: 缂栬緫 `index.html` 椤堕儴鐨?`tailwind.config`锛屼慨鏀?`cinema.gold` 鍜?`cinema.goldBright` 鍗冲彲銆?
---

## 馃搵 鏂囦欢娓呭崟纭

閮ㄧ讲鍓嶇‘璁?`D:\L\CinePrompt Skill\` 鐩綍鏈夛細

```
D:\L\CinePrompt Skill\
鈹溾攢鈹€ index.html              鈫?涓婚〉闈紙GitHub Pages 鍏ュ彛锛?鈹溾攢鈹€ data\
鈹?  鈹斺攢鈹€ examples.json       鈫?妗堜緥鏁版嵁
鈹溾攢鈹€ skills\cineprompt\
鈹?  鈹斺攢鈹€ SKILL.md            鈫?Skill 涓讳綋
鈹溾攢鈹€ commands\
鈹?  鈹斺攢鈹€ cine.md             鈫?/cine 鍛戒护
鈹溾攢鈹€ install.sh              鈫?Mac/Linux 瀹夎鑴氭湰
鈹溾攢鈹€ install.ps1             鈫?Windows 瀹夎鑴氭湰
鈹溾攢鈹€ INSTALL.md              鈫?OpenCode 鑷姩璇诲彇
鈹溾攢鈹€ README.md               鈫?浠撳簱璇存槑
鈹溾攢鈹€ DEPLOY.md               鈫?浣犳鍦ㄧ湅鐨?鈹溾攢鈹€ SKILL.md                鈫?Skill 瀹屾暣瑙勮寖鍓湰
鈹斺攢鈹€ LICENSE                 鈫?MIT 璁稿彲璇?```

鍏ㄩ儴灏变綅 鈫?鎺ㄩ€?鈫?鍚敤 Pages 鈫?涓婄嚎锛?
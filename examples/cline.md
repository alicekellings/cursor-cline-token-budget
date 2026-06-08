# Cline

Cline 这个 VS Code 扩展可以直接配置 OpenAI-compatible provider。

1. 打开 Cline 面板，进入 **Settings**。
2. **API Provider** 选择 **OpenAI Compatible**。
3. **Base URL** 填：
   - `https://api.wappkit.com/v1`
4. **API Key** 填你的 token。
5. **Model ID** 填模型市场里的精确模型名，例如 `gpt-5.5`。
6. 保存后发起一个测试任务。

长任务建议使用带固定额度的 token。运行时观察 `usage` 数字，或在 API 中转站的请求日志里看每次请求消耗。

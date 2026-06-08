# Cursor

Cursor 可以通过 BYOK 方式把请求转到 OpenAI-compatible endpoint。

1. 打开 **Settings > Models**。
2. 在 **OpenAI API Key** 中填入你的 API key。
3. 开启 **Override OpenAI Base URL**，并设置为：
   - `https://api.wappkit.com/v1`
4. 添加需要使用的自定义模型名，模型名要和中转站模型市场展示的名称一致，例如 `gpt-5.5`。
5. 保存后发送一条测试消息。

注意：

- Cursor 设置界面不同版本会变化，但你要找的核心配置是 **API key**、**base URL override** 和 **custom model name**。
- Cursor 的部分能力，例如 Tab 或某些 agent 模式，可能只走 Cursor 自己的后端，不一定使用自定义 base URL。Chat 和模型选择器通常会使用你的配置。
- 想控制成本，就给 Cursor 单独创建一个带额度的 token，具体见 [README](../README.md)。

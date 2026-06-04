![kiro-steering banner](assets/banner.png)

# kiro-steering

为 Kiro 提供长期记忆、规则与人设的 Steering 文档。

Steering 可以理解为更适合 Kiro 的 `agent.md` 或 `claude.md`：把一个或多个 Markdown 规则文档放进指定目录后，Kiro 会在日常对话和开发任务中主动参考这些长期规则。

## 路径

### 全局规则

- macOS：`~/.kiro/steering/`
- Windows：`%USERPROFILE%\.kiro\steering\`

### 项目规则

```text
<你的项目根目录>/.kiro/steering/
```

## 形式

在 `steering` 文件夹内放一个或多个 Markdown 文件即可，文件名没有硬性要求。常见组织方式：

```text
C:\Users\Administrator\.kiro\steering\
├── language.md
├── workflow.md
├── coding-style.md
├── security.md
└── git.md
```

如果只想维护一个文档，可以命名为 `steering.md` 或 `agent.md`。

## 优先级

项目级规则优先于全局规则。

当项目目录下的 `.kiro/steering/` 与全局 `~/.kiro/steering/` 存在冲突时，Kiro 会优先遵守项目级 Steering。

## 示例：固定使用简体中文

可以新建一个 `language.md`：

```markdown
- 默认始终使用简体中文回答用户，术语、代码等可以保留英文。
```

这个规则适合解决 Kiro 在会话中偶尔切换到英文或日语的问题。

## 附件脚本

文档附件已整理到 `attachments/`：

- [macOS 脚本：open-kiro-steering.zsh](attachments/open-kiro-steering.zsh)
- [Windows 脚本：open-kiro-steering.cmd](attachments/open-kiro-steering.cmd)

功能：自动定位、创建并打开 Kiro 的全局 Steering 文件夹。

使用方式：

- Windows：双击 `open-kiro-steering.cmd`
- macOS：打开终端，输入 `zsh `，拖入 `open-kiro-steering.zsh`，回车

## 来源

整理自飞书 Wiki 文档：<https://lxxtrhuie3n.feishu.cn/wiki/QFR4wwQCWiPyUgkBIAPcCjVKnxc>

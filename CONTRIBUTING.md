# Contributing Guide · 贡献指南

[English](#english) · [中文](#中文)

---

## English

Thank you for your interest in improving the UIUC Assignment Template!
This guide explains how to report issues, suggest improvements, and submit pull requests.

### Ways to Contribute

- **Bug reports** — compilation errors, incorrect formatting, broken cross-references, etc.
- **Feature requests** — new code environments, additional class options, layout improvements.
- **Documentation** — fixing typos, improving explanations, adding examples.
- **New language environments** — adding syntax highlighting for languages not yet supported.

### Reporting Issues

Before opening an issue, please:

1. Search [existing issues](../../issues) to avoid duplicates.
2. Provide a **minimal reproducible example** — the smallest `.tex` snippet that triggers the problem.
3. Include your TeX distribution and version (e.g. `TeX Live 2024`, `MiKTeX 24.1`).
4. State your operating system and whether you used XeLaTeX.

### Submitting a Pull Request

1. **Fork** the repository and create a branch from `main`:
   ```bash
   git checkout -b fix/your-descriptive-branch-name
   ```

2. **Make your changes.** Keep commits focused — one logical change per commit.

3. **Test your changes** by compiling `main.tex` with XeLaTeX (full four-pass cycle if citations are present):
   ```bash
   xelatex main && bibtex main && xelatex main && xelatex main
   ```
   Ensure there are **no new `!` errors** in the log.

4. **Update documentation** — if your change affects user-facing behaviour, update the relevant comments in `main.tex`, the affected `.tex` files, and this `README.md` / `README_zh.md`.

5. **Open a pull request** against `main` with a clear title and description of what you changed and why.

### Code Style

- Use **4-space indentation** inside LaTeX environments.
- Add an **English comment** above every non-obvious command or setting in `uiuc_asg.cls`.
- Keep `uiuc_asg.cls` self-contained — do not add dependencies on external image files or local fonts that are not universally available.

### Questions?

Feel free to open a [Discussion](../../discussions) for general questions that do not fit the issue tracker.

---

## 中文

感谢你有兴趣为 UIUC 作业模板做出贡献！
本指南说明如何提交 Issue、建议和 Pull Request。

### 贡献方式

- **Bug 报告** —— 编译错误、格式问题、交叉引用失效等。
- **功能建议** —— 新的代码语言环境、新的类选项、排版改进等。
- **文档完善** —— 修正错别字、改善说明、补充示例。
- **新语言高亮** —— 为尚未支持的编程语言添加 `lstnewenvironment`。

### 提交 Issue

在开 Issue 之前，请：

1. 搜索[已有 Issue](../../issues)，避免重复。
2. 提供**最小可复现示例** —— 能触发问题的最短 `.tex` 代码片段。
3. 注明你的 TeX 发行版及版本（例如 `TeX Live 2024`、`MiKTeX 24.1`）。
4. 注明操作系统以及是否使用了 XeLaTeX。

### 提交 Pull Request

1. **Fork** 本仓库，从 `main` 创建分支：
   ```bash
   git checkout -b fix/你的分支名称
   ```

2. **进行修改。** 保持提交的专注性 —— 每个 commit 只做一件事。

3. **测试修改**，用 XeLaTeX 编译 `main.tex`（有引用时执行完整四遍流程）：
   ```bash
   xelatex main && bibtex main && xelatex main && xelatex main
   ```
   确保日志中**没有新增的 `!` 错误**。

4. **更新文档** —— 如果你的改动影响了用户侧行为，请同步更新 `main.tex` 中的注释、相关 `.tex` 文件，以及 `README.md` / `README_zh.md`。

5. **提交 PR** 到 `main` 分支，标题和描述清晰说明你改了什么、为什么改。

### 代码风格

- LaTeX 环境内使用 **4 空格缩进**。
- `uiuc_asg.cls` 中每条非显而易见的命令或设置，都需在上方加**英文注释**。
- 保持 `uiuc_asg.cls` 的自包含性 —— 不要新增对外部图片文件或不通用本地字体的依赖。

### 有问题？

一般性问题（不适合开 Issue）欢迎通过 [Discussions](../../discussions) 讨论。

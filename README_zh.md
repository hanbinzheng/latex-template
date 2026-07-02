<div align="center">

# 伊利诺伊大学厄巴纳香槟校区 LaTeX 模板

**为 UIUC 英文作业设计的简洁、可靠的 LaTeX 模板。**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![XeLaTeX](https://img.shields.io/badge/编译器-XeLaTeX-green.svg)](https://www.tug.org/xetex/)
[![Maintained](https://img.shields.io/badge/持续维护-是-brightgreen.svg)]()

[English](README.md) · [中文说明](README_zh.md)

</div>

---

<p align="center">
  <img src="figure/document_sample.png" alt="模板效果预览" width="600">
</p>


## ✨ 功能特性

| 功能 | 说明 |
|---|---|
| 📄 页眉页脚 | UIUC 风格 `UNIVERSITY OF ILLINOIS URBANA-CHAMPAIGN` 页眉，`Page X of Y` 页脚 |
| 📚 引用 | APA 格式，通过 `apacite` 实现 —— 支持 `\citet{}` 和 `\citep{}` |
| 💻 代码块 | 支持 Python、SQL、JSON、HTML、JavaScript、C++、CMD 语法高亮 |
| 🔗 交叉引用 | 通过 `cleveref` 实现的智能 `\cref{}` / `\Cref{}` |
| 🖼️ 图表 | 按 section 编号（图 1.1、表 2.3……），支持 `[H]` 强制定位 |
| 📎 附件 | 一行 `\includepdf` 即可插入封面、评分标准或 Turnitin 报告 |
| 🔒 Turnitin 模式 | `[turnitin]` 类选项 —— 完全禁用页眉页脚，防止被误判为重复文本 |
| 📑 附录 | 独立的罗马数字页码（i、ii、iii……） |

## 🚀 快速开始

### 前置要求

- **TeX Live 2022+**（或 MiKTeX），需包含 XeLaTeX
- **Consolas** & **Menlo** 字体（Windows 系统预装 Consolas；macOS 系统预装 Menlo, Linux 用户请在 `uiuc_asg.cls` 中替换字体）
- 推荐编辑器：**VS Code** + [LaTeX Workshop 插件](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

### 使用方法

1. **克隆或下载**本仓库到你的作业文件夹：
   ```bash
   git clone https://github.com/YOUR_USERNAME/XMUM_LaTeX_Template.git my-assignment
   ```

2. **编辑 `main.tex`** —— 填写标题、姓名和学号。

3. **编写内容** —— 创建 `sections/01_introduction.tex`、`sections/02_methodology.tex` 等文件，并在 `main.tex` 中用 `\input` 引入。

4. **添加参考文献**到 `ref.bib`（BibTeX 格式）。

5. **编译**（见下方[编译说明](#-编译说明)）。

## 📁 项目结构

```
your-assignment/
├── main.tex                 ← 主文件（入口）
├── uiuc_asg.cls             ← 模板类文件（一般无需修改）
├── ref.bib                  ← BibTeX 参考文献
│
├── sections/                ← 每个 section 一个 .tex 文件（强烈推荐）
│   ├── 01_introduction.tex
│   ├── 02_methodology.tex
│   └── ...
│
├── figure/                  ← 所有图片
│
└── docs/                    ← 学校提供的文件
    ├── cover_page.pdf       ← 从 cover_page.docx 导出
    ├── sample_rubric.pdf    ← 评分标准
    └── turnitin_report.pdf  ← Turnitin 报告
```

> **提示 —— 模块化文件更适合 AI 辅助写作。** 将内容按 section 分成独立文件后，你可以将单个 section 文件喂给 ChatGPT / Claude / Gemini。AI 能够完整读取整个 section，给出更高质量的建议，而不会因上下文窗口不足而遗漏关键内容。

## ⚙️ 编译说明

> **必须使用 XeLaTeX**，请勿使用 pdfLaTeX —— 模板依赖 `fontspec` 加载 Consolas 字体。

### 有参考文献（文档中含 `\bibliography{ref}`）

```bash
xelatex main
bibtex main
xelatex main
xelatex main
```

### 无参考文献

```bash
xelatex main
xelatex main
```

在 **VS Code** + LaTeX Workshop 中，将 recipe 设为 `latexmk`，它会自动检测是否有引用并执行正确的编译遍数。

## 📤 Turnitin 提交

重复出现的 `UNIVERSITY OF ILLINOIS URBANA-CHAMPAIGN` 页眉和 `Page X of Y` 页脚可能被 Turnitin 判定为重复文本，导致相似度虚高。**只需改一个词**即可生成无页眉页脚的提交版本：

```latex
% 正常版本（用于存档和提交给讲师）：
\documentclass{uiuc_asg}

% Turnitin 版本（完全禁用页眉页脚）：
\documentclass[turnitin]{uiuc_asg}
```

完整操作流程请参阅 [`sections/best_practices.tex`](sections/best_practices.tex)。

## 🤝 参与贡献

欢迎提交 Issue、建议和 Pull Request！
在开 PR 之前，请先阅读 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 📄 许可证

本项目采用 **MIT 许可证** —— 详见 [LICENSE](LICENSE)。

---

<div align="center">
用 ❤️ 为 UIUC 学生打造
</div>

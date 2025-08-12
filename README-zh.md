# Vextra - 开源设计软件

[![License: AGPL-3.0](https://img.shields.io/badge/License-AGPL%203.0-green.svg)](https://opensource.org/licenses/AGPL-3.0)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.8+-blue.svg)](https://www.typescriptlang.org/)
[![Vue](https://img.shields.io/badge/Vue-3.2+-green.svg)](https://vuejs.org/)

Vextra 是一个功能强大的开源设计软件，支持 Figma 和 Sketch 文件格式。它提供了完整的在线设计工具链，包括编辑器、协作功能、版本管理等核心特性。

## ✨ 主要特性

- 🎨 **多格式支持**: 支持 Figma (.fig) 和 Sketch (.sketch) 文件格式
- 🖱️ **在线编辑器**: 基于 Vue 3 的现代化 Web 编辑器
- 👥 **实时协作**: 支持多用户实时协作编辑
- 🔄 **版本管理**: 完整的版本控制和历史记录
- 📱 **响应式设计**: 支持桌面和移动设备
- 🌐 **国际化**: 内置多语言支持
- 🔌 **插件系统**: 可扩展的插件架构
- ☁️ **云端存储**: 支持多种云存储后端

## 🏗️ 项目架构

Vextra 采用模块化架构设计，主要包含以下核心模块：

### 核心模块

- **`core/`** - 核心数据结构和处理逻辑
  - 文件格式解析 (Figma/Sketch)
  - 数据结构定义
  - 基础工具函数

- **`editor/`** - 在线编辑器
  - Vue 3 + TypeScript
  - 画布渲染引擎
  - 用户交互处理

- **`main/`** - 主应用程序
  - 用户界面框架
  - 路由管理
  - 状态管理

- **`server/`** - 后端服务 (Go)
  - RESTful API
  - WebSocket 支持
  - 数据持久化

- **`auth/`** - 认证服务
  - 用户管理
  - 权限控制
  - 单点登录

- **`agent/`** - AI 代理
  - 智能设计助手
  - 自动化工具

- **`mcp/`** - MCP 协议支持
  - 模型上下文协议
  - 外部工具集成

## 🚀 快速开始

### 使用 Docker Compose (推荐)

1. 克隆项目
```bash
git clone https://github.com/kcaitech/vextra.git
cd vextra
```

2. 启动服务
```bash
cd quickstart
./docker-run.sh up
```

3. 访问应用
- 主应用: http://localhost:80
- 认证服务: http://localhost:81
- MinIO 控制台: http://localhost:9001

### 手动安装

#### 前端开发

```bash
# 安装依赖
cd main
npm install

# 启动开发服务器
npm run dev
```

#### 后端开发

```bash
# 安装 Go 依赖
cd server
go mod download

# 启动服务
go run main.go --port 3000
```

## 🛠️ 开发指南

### 环境要求

- **Node.js**: 18.0+
- **Go**: 1.21+
- **MySQL**: 8.0+
- **Redis**: 8.0+
- **MongoDB**: 8.0+
- **MinIO**: 最新版本

### 项目结构

```
vextra/
├── core/           # 核心模块
├── editor/         # 编辑器
├── main/           # 主应用
├── server/         # 后端服务
├── auth/           # 认证服务
├── agent/          # AI 代理
├── mcp/            # MCP 协议
├── quickstart/     # 快速开始配置
└── docs/           # 文档
```

### 贡献方式

- 🐛 报告 Bug
- 💡 提出新功能建议
- 📝 改进文档
- 🔧 提交代码修复
- 🌟 添加新特性

## 📄 许可证

本项目采用 [GNU Affero General Public License v3.0](LICENSE.txt) 许可证。

## 🙏 致谢

感谢所有为 Vextra 项目做出贡献的开发者和用户！

## 📞 联系我们

- 官方网站: [https://kcaitech.com](https://kcaitech.com)
- 产品网站: [https://vextra.cn](https://vextra.cn)
- GitHub: [https://github.com/kcaitech/vextra](https://github.com/kcaitech/vextra)

## 🏢 企业支持

对于需要以下服务的企业客户：
- 专业支持和咨询
- 定制开发和集成
- 培训和研讨会

**联系方式**：[contact@kcaitech.com](mailto:contact@kcaitech.com)

## 🌍 多语言

- [English](./README.md) - English version
- [中文](./README-zh.md) - 中文版本

---

**Vextra** - 让设计更简单，让协作更高效 🚀



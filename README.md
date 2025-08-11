# Vextra - Open Source Design Software

[![License: AGPL-3.0](https://img.shields.io/badge/License-AGPL%203.0-green.svg)](https://opensource.org/licenses/AGPL-3.0)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.8+-blue.svg)](https://www.typescriptlang.org/)
[![Vue](https://img.shields.io/badge/Vue-3.2+-green.svg)](https://vuejs.org/)

Vextra is a powerful open-source design software that supports Figma and Sketch file formats. It provides a complete online design toolchain, including editor, collaboration features, version management, and other core capabilities.

## ✨ Key Features

- 🎨 **Multi-format Support**: Supports Figma (.fig) and Sketch (.sketch) file formats
- 🖱️ **Online Editor**: Modern web editor based on Vue 3
- 👥 **Real-time Collaboration**: Supports multi-user real-time collaborative editing
- 🔄 **Version Management**: Complete version control and history tracking
- 📱 **Responsive Design**: Supports desktop and mobile devices
- 🌐 **Internationalization**: Built-in multi-language support
- 🔌 **Plugin System**: Extensible plugin architecture
- ☁️ **Cloud Storage**: Supports multiple cloud storage backends

## 🏗️ Project Architecture

Vextra adopts a modular architecture design, primarily consisting of the following core modules:

### Core Modules

- **`core/`** - Core data structures and processing logic
  - File format parsing (Figma/Sketch)
  - Data structure definitions
  - Basic utility functions

- **`editor/`** - Online editor
  - Vue 3 + TypeScript
  - Canvas rendering engine
  - User interaction handling

- **`main/`** - Main application
  - User interface framework
  - Route management
  - State management

- **`server/`** - Backend service (Go)
  - RESTful API
  - WebSocket support
  - Data persistence

- **`auth/`** - Authentication service
  - User management
  - Permission control
  - Single sign-on

- **`agent/`** - AI agent
  - Intelligent design assistant
  - Automation tools

- **`mcp/`** - MCP protocol support
  - Model Context Protocol
  - External tool integration

## 🚀 Quick Start

### Using Docker Compose (Recommended)

1. Clone the project
```bash
git clone https://github.com/kcaitech/vextra.git
cd vextra
```

2. Start services
```bash
cd quickstart
./docker-run.sh up
```

3. Access the application
- Main app: http://localhost:80
- Auth service: http://localhost:81
- MinIO console: http://localhost:9001

### Manual Installation

#### Frontend Development

```bash
# Install dependencies
cd main
npm install

# Start development server
npm run dev
```

#### Backend Development

```bash
# Install Go dependencies
cd server
go mod download

# Start service
go run main.go --port 3000
```

## 🛠️ Development Guide

### Requirements

- **Node.js**: 18.0+
- **Go**: 1.21+
- **MySQL**: 8.0+
- **Redis**: 8.0+
- **MongoDB**: 8.0+
- **MinIO**: Latest version

### Project Structure

```
vextra/
├── core/           # Core module
├── editor/         # Editor
├── main/           # Main application
├── server/         # Backend service
├── auth/           # Authentication service
├── agent/          # AI agent
├── mcp/            # MCP protocol
├── quickstart/     # Quick start configuration
└── docs/           # Documentation
```

### Contributing

- 🐛 Report bugs
- 💡 Suggest new features
- 📝 Improve documentation
- 🔧 Submit code fixes
- 🌟 Add new features

## 📄 License

This project is licensed under the [GNU Affero General Public License v3.0](LICENSE.txt).

## 🙏 Acknowledgments

Thanks to all developers and users who have contributed to the Vextra project!

## 📞 Contact Us

- Official website: [https://kcaitech.com](https://kcaitech.com)
- GitHub: [https://github.com/kcaitech/vextra](https://github.com/kcaitech/vextra)
- Email: support@kcaitech.com

## 🌍 Multi-language

- [English](./README-en.md) - English version
- [中文](./README.md) - Chinese version

---

**Vextra** - Making design simpler, collaboration more efficient 🚀



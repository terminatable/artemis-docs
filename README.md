# Artemis Docs

[![Zig Version](https://img.shields.io/badge/zig-0.15.1-orange)](https://ziglang.org/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Docs Status](https://img.shields.io/badge/docs-live-brightgreen.svg)](https://docs.terminatable.org)

**Interactive documentation website for the Artemis Engine ecosystem with guides, tutorials, and API reference.**

> **📚 Learn by Doing**: Interactive tutorials, live code examples, and comprehensive guides for mastering Artemis Engine development.

## ✨ What's in the Docs?

The Artemis documentation provides everything you need to become productive with the Artemis Engine ecosystem:

### 📖 Documentation Structure

#### 🚀 Getting Started
- **Quick Start Guide** - From zero to first game in 5 minutes
- **Installation** - Setup across different platforms
- **First Game Tutorial** - Build a complete game step-by-step
- **Core Concepts** - Understanding ECS architecture

#### 🏗️ Architecture Guides
- **ECS Deep Dive** - Entities, Components, Systems in detail
- **Query System** - Advanced entity filtering and iteration
- **Plugin Development** - Creating modular, reusable plugins
- **Performance Optimization** - Getting maximum performance

#### 🎨 UI Development
- **Artemis GUI Guide** - Reactive UI development
- **Component Library** - Built-in UI components reference
- **Styling System** - Theming and customization
- **Event Handling** - User interaction patterns

#### 🔧 Advanced Topics
- **Networking** - Multiplayer game development
- **Asset Management** - Loading and caching strategies
- **Hot Reloading** - Rapid development workflows
- **Cross-Platform** - Deployment to different targets

### 🌐 Live Documentation

Visit [docs.terminatable.org](https://docs.terminatable.org) for:

- **Interactive Examples** - Run code directly in the browser
- **API Search** - Quick function and type lookup
- **Community Guides** - User-contributed tutorials
- **Video Tutorials** - Step-by-step video guides

## 🛠️ Local Development

### Prerequisites
- **Zig 0.15.1+**
- **Node.js 18+** (for documentation website)

### Setup

```bash
# Clone the docs
git clone https://github.com/terminatable/artemis-docs.git
cd artemis-docs

# Install dependencies
npm install

# Start development server
npm run dev

# Build static site
npm run build
```

### Building Documentation

```bash
# Generate API documentation from source
zig build docs

# Generate examples documentation
zig build docs-examples

# Build complete site
npm run build:complete
```

## 📝 Contributing to Docs

### Writing Guidelines
- **Clear Examples** - Every concept should have working code
- **Progressive Learning** - Build complexity gradually
- **Real-World Focus** - Examples should be practical
- **Interactive Where Possible** - Use live code examples

### Content Structure
```
docs/
├── guides/           # Step-by-step tutorials
├── reference/        # API documentation  
├── examples/         # Interactive code examples
├── ecosystem/        # Integration guides
└── community/        # Community content
```

### Adding New Content

1. **Create Guide**: Add to `docs/guides/`
2. **Add Examples**: Include working code in `docs/examples/`
3. **Update Navigation**: Modify site navigation
4. **Test Locally**: Run `npm run dev` to preview
5. **Submit PR**: Contribute your improvements

## 🎯 Documentation Goals

### For Beginners
- **Zero to Hero** - Complete learning path from basics to advanced
- **Visual Learning** - Diagrams, animations, and interactive examples
- **Common Patterns** - Solutions to typical game development problems

### For Experts
- **API Reference** - Complete function and type documentation
- **Advanced Patterns** - Complex architectural solutions
- **Performance Guides** - Optimization techniques and benchmarks
- **Extension Points** - Plugin and customization documentation

### For Contributors
- **Architecture Docs** - Internal engine design documentation
- **Contribution Guide** - How to contribute to the ecosystem
- **Release Process** - Versioning and release procedures

## 📊 Documentation Metrics

### Coverage
- **API Coverage**: 95%+ of public APIs documented
- **Example Coverage**: All major features have examples
- **Tutorial Coverage**: Complete learning paths available

### Quality
- **Accuracy**: All code examples tested in CI
- **Freshness**: Documentation updated with every release
- **Accessibility**: WCAG 2.1 AA compliant

## 🌟 Featured Content

### Quick Start Series
1. **Your First ECS Game** - 5-minute tutorial
2. **Adding a User Interface** - GUI integration
3. **Plugin Development** - Extending functionality
4. **Performance Optimization** - Making it fast

### Deep Dive Guides
- **ECS Architecture Patterns** - Advanced entity relationships
- **Reactive UI Development** - Building game interfaces
- **Plugin Ecosystem** - Creating and sharing plugins
- **Production Deployment** - Shipping your game

### API References
- **Artemis Engine** - Core ECS documentation
- **Artemis GUI** - UI component reference
- **Artemis Plugins** - Plugin system documentation

## 🚀 Roadmap

### Current (v0.1) - Foundation
- ✅ Basic documentation structure
- ✅ Getting started guides
- ✅ API reference generation
- ✅ Example integration

### Next (v0.2) - Enhancement
- 🔄 Interactive code playground
- 🔄 Video tutorial integration
- 🔄 Community contribution system
- 🔄 Advanced search functionality

### Future (v1.0) - Production
- 📋 Multi-language support
- 📋 Offline documentation
- 📋 Mobile-optimized experience
- 📋 AI-powered help assistant

## 🤝 Contributing

We welcome contributions to improve the documentation:

- **Fix Typos** - Submit PRs for any errors you find
- **Add Examples** - Contribute working code examples
- **Write Guides** - Share your knowledge with tutorials
- **Improve Design** - Help make the docs more beautiful
- **Translate Content** - Help make docs accessible globally

## 📞 Community

- **Discord**: [Terminatable Community](https://discord.gg/terminatable) - Real-time help
- **GitHub Discussions**: Ask questions and share ideas
- **Documentation Issues**: Report problems or suggest improvements

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

Documentation content is freely available for community use.

---

**Artemis Docs** - Learn Game Development with Zig  
*Part of the [Terminatable](https://github.com/terminatable) ecosystem*

**Ready to learn?** Visit [docs.terminatable.org](https://docs.terminatable.org) and start building! 🚀
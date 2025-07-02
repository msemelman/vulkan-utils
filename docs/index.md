---
layout: default
title: Home
nav_order: 1
permalink: /
---

# Vulkan Utils

[![Python 3.10+](https://img.shields.io/badge/python-3.10+-blue.svg)](https://www.python.org/downloads/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/msemelman/vulkan_utils/blob/main/LICENSE)
[![Version](https://img.shields.io/badge/version-0.1.6-orange.svg)](https://github.com/msemelman/vulkan_utils)

A simple yet powerful command-line utility for managing Vulkan SDK operations. This tool simplifies downloading, installing, and managing Vulkan SDK versions across different platforms.

## 🚀 Features

- **Cross-platform support**: Works on Linux, macOS, and Windows
- **Automatic platform detection**: Intelligently detects your current platform
- **Version management**: Download specific versions or always get the latest
- **Download-only mode**: Download SDKs without installation for offline use
- **SHA verification**: Built-in integrity checking for downloaded files
- **Progress tracking**: Real-time download progress indicators
- **Smart installation**: Platform-specific installation with helpful setup instructions
- **Installation management**: Detects existing installations and provides upgrade options

## 📦 Quick Installation

### Using uvx (One-time execution)

Run vulkan_utils directly without installing it globally:

```bash
# Run commands directly with uvx
uvx vulkan_utils install-sdk
uvx vulkan_utils latest-version
uvx vulkan_utils sdk-info
```

### Using uv (Project installation)

```bash
uv add vulkan_utils
```

### Using pip

```bash
pip install vulkan_utils
```

## 🛠️ Quick Start

After installation, the `vulkan-utils` command will be available in your terminal:

```bash
# Download and install the latest Vulkan SDK for your platform
vulkan-utils install-sdk

# or run directly with uvx (no installation required)
uvx vulkan_utils install-sdk
```

### Advanced Usage Examples

```bash
# Install a specific version
vulkan-utils install-sdk --version 1.3.224.0

# Install for a specific platform
vulkan-utils install-sdk --platform linux

# Install to a custom directory
vulkan-utils install-sdk --install-path /opt/VulkanSDK

# Download only (don't install)
vulkan-utils install-sdk --download-only --install-path ./downloads

# Get the latest available version
vulkan-utils latest-version

# Get detailed SDK information
vulkan-utils sdk-info
```

## 🔧 Command Overview

### `install-sdk`
Downloads and installs the Vulkan SDK with options for version, platform, and installation path.

### `latest-version`
Gets the latest available Vulkan SDK version for your platform or a specified platform.

### `sdk-info`
Provides detailed information about a Vulkan SDK version including download URLs and SHA hashes.

## 🖥️ Platform Support

- **Linux**: Full support with automatic environment variable setup instructions
- **macOS**: Complete support with platform-specific configuration guidance
- **Windows**: Native support with system-wide installation

## 📚 Documentation Navigation

- [Installation Guide](installation.html) - Detailed installation instructions and setup
- [Usage Guide](usage.html) - Comprehensive usage examples and workflows
- [Command Reference](reference.html) - Complete CLI documentation with all options

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request on our [GitHub repository](https://github.com/msemelman/vulkan_utils).

### Development Guidelines

1. Follow the existing code style and conventions
2. Add type hints to all function parameters and return values
3. Write comprehensive docstrings using NumPy format
4. Use Pydantic models for data structures
5. Write tests for new functionality using pytest
6. Update documentation as needed

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/msemelman/vulkan_utils/blob/main/LICENSE) file for details.

## 🆘 Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/msemelman/vulkan_utils/issues) page
2. Create a new issue with detailed information about your problem
3. Include your platform, Python version, and error messages

---

**Note**: This tool is not affiliated with the Khronos Group or LunarG. It's a community tool designed to simplify Vulkan SDK management.

This project is licensed under the MIT License - see the [LICENSE](https://github.com/msemelman/vulkan_utils/blob/main/LICENSE) file for details.

---

**Note**: This tool is not affiliated with the Khronos Group or LunarG. It's a community tool designed to simplify Vulkan SDK management.

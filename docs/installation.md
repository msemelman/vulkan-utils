---
layout: default
title: Installation
nav_order: 2
---

# Installation

This page provides detailed installation instructions for Vulkan Utils across different environments and use cases.

## 📦 Installation Methods

### Using uvx (One-time execution) - Recommended

Run vulkan_utils directly without installing it globally:

```bash
# Run commands directly with uvx
uvx vulkan_utils install-sdk
uvx vulkan_utils latest-version
uvx vulkan_utils sdk-info
```

**Benefits of uvx:**
- No global installation required
- Always uses the latest version
- Perfect for CI/CD environments
- No dependency conflicts

### Using uv (Project installation)

```bash
uv add vulkan_utils
```

### Using pip

```bash
pip install vulkan_utils
```

### Development Installation

```bash
# Clone the repository
git clone https://github.com/msemelman/vulkan_utils.git
cd vulkan_utils

# Install in development mode
uv sync
```

## 🖥️ Platform-Specific Setup

### macOS

After installing the Vulkan SDK, you may need to set environment variables:

```bash
export VULKAN_SDK=~/VulkanSDK
export PATH=$VULKAN_SDK/bin:$PATH
export DYLD_LIBRARY_PATH=$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d
```

Add these to your `~/.zshrc` or `~/.bash_profile` for persistence.

### Linux

Set the following environment variables:

```bash
export VULKAN_SDK=~/VulkanSDK
export PATH=$VULKAN_SDK/bin:$PATH
export LD_LIBRARY_PATH=$VULKAN_SDK/lib:$LD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d
```

### Windows

Windows installations should work system-wide automatically. No additional configuration typically required.

## 🧪 Development Setup

### Setting Up Development Environment

```bash
# Clone the repository
git clone https://github.com/msemelman/vulkan_utils.git
cd vulkan_utils

# Install dependencies with uv
uv sync

# Run in development mode
uv run vulkan-utils --help
```

### Running Tests

```bash
# Install development dependencies
uv sync --dev

# Run tests
uv run pytest
```

## Verification

After installation, verify that vulkan-utils is working correctly:

```bash
# Show help
vulkan-utils --help
# or with uvx
uvx vulkan_utils --help

# Show version
vulkan-utils --version
# or with uvx
uvx vulkan_utils --version
```

If you see the help text and version information, you're ready to go!

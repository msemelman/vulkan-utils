---
layout: default
title: Usage Guide
nav_order: 3
---

# Usage Guide

This guide provides comprehensive information on how to use Vulkan Utils effectively.

## 🛠️ Basic Usage

After installation, the `vulkan-utils` command will be available in your terminal. Alternatively, you can run commands directly with `uvx vulkan_utils` without installing.

### Basic Commands

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

## Installing Vulkan SDK

### Quick Start (Recommended)

```bash
# Download and install the latest Vulkan SDK for your platform
vulkan-utils install-sdk

# or run directly with uvx (no installation required)
uvx vulkan_utils install-sdk
```

### Advanced Usage

```bash
# Install a specific version
vulkan-utils install-sdk --version 1.3.224.0
# or with uvx
uvx vulkan_utils install-sdk --version 1.3.224.0

# Install for a specific platform
vulkan-utils install-sdk --platform linux

# Install to a custom directory
vulkan-utils install-sdk --install-path /opt/VulkanSDK

# Download only (don't install)
vulkan-utils install-sdk --download-only --install-path ./downloads
```

## Getting Version Information

```bash
# Get the latest available version for your platform
vulkan-utils latest-version
# or with uvx
uvx vulkan_utils latest-version

# Get latest version for a specific platform
vulkan-utils latest-version --platform windows

# Get detailed SDK information
vulkan-utils sdk-info
# or with uvx
uvx vulkan_utils sdk-info

# Get info for a specific version
vulkan-utils sdk-info --version 1.3.224.0 --platform mac
```

## 🔍 Examples

### Complete Workflow Example

```bash
# Check latest available version
vulkan-utils latest-version
# or with uvx
uvx vulkan_utils latest-version
# Output: Latest Vulkan SDK version for mac: 1.3.250.1

# Get detailed information about the latest SDK
vulkan-utils sdk-info
# or with uvx
uvx vulkan_utils sdk-info
# Output: 
# SDK Version: 1.3.250.1
# Platform: mac
# Filename: vulkan_sdk.zip
# Download URL: https://sdk.lunarg.com/sdk/download/latest/mac/vulkan_sdk.zip?Human=true
# SHA Hash: abc123...

# Download and install
vulkan-utils install-sdk
# or with uvx
uvx vulkan_utils install-sdk
# Downloads, extracts, and installs with progress indicators and platform-specific instructions
```

### Download for Offline Installation

```bash
# Download multiple versions for different platforms
vulkan-utils install-sdk --version 1.3.250.1 --platform linux --download-only --install-path ./offline-sdks
vulkan-utils install-sdk --version 1.3.250.1 --platform windows --download-only --install-path ./offline-sdks
vulkan-utils install-sdk --version 1.3.250.1 --platform mac --download-only --install-path ./offline-sdks

# or with uvx (useful for CI/CD or one-time usage)
uvx vulkan_utils install-sdk --version 1.3.250.1 --platform linux --download-only --install-path ./offline-sdks
uvx vulkan_utils install-sdk --version 1.3.250.1 --platform windows --download-only --install-path ./offline-sdks
uvx vulkan_utils install-sdk --version 1.3.250.1 --platform mac --download-only --install-path ./offline-sdks
```

## Common Use Cases

### CI/CD Integration

```bash
# Use uvx in CI/CD pipelines for clean, isolated runs
uvx vulkan_utils install-sdk --platform linux --install-path /opt/vulkan
```

### Development Environment Setup

```bash
# Set up consistent development environment
vulkan-utils install-sdk --version 1.3.224.0 --install-path ./vulkan-sdk
```

### Multi-platform Distribution

```bash
# Download SDKs for all platforms
for platform in linux mac windows; do
    vulkan-utils install-sdk --platform $platform --download-only --install-path ./dist/$platform
done
```

## Best Practices

1. **Use uvx for one-time operations**: Perfect for CI/CD or when you don't want global installation
2. **Specify versions in production**: Use specific versions rather than "latest" for reproducible builds
3. **Verify downloads**: The tool automatically verifies SHA hashes for integrity
4. **Custom installation paths**: Use `--install-path` to organize multiple SDK versions
5. **Platform consistency**: Use `--platform` to ensure consistent behavior across environments

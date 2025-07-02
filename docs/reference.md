---
layout: default
title: Command Reference
nav_order: 4
---

# Vulkan Utils CLI Reference

Welcome to the Vulkan Utils CLI reference documentation. This section provides detailed information about the command-line interface (CLI) commands available in the Vulkan Utils package, including options, expected outputs, and platform-specific notes.

## Available Commands

### `install-sdk`

Downloads and installs the Vulkan SDK.

#### Options:
- `--version`: SDK version to download (default: "latest").
- `--platform`: Target platform - `linux`, `mac`, `windows`, or `auto` (default: "auto").
- `--install-path`: Installation directory (default: `~/VulkanSDK`).
- `--download-only`: Only download, don't extract/install.

#### Examples:
```bash
# Basic installation
vulkan-utils install-sdk

# Specific version for Linux
vulkan-utils install-sdk --version 1.3.224.0 --platform linux

# Download to custom location without installing
vulkan-utils install-sdk --download-only --install-path ./my-downloads
```

### `latest-version`

Get the latest available Vulkan SDK version.

#### Options:
- `--platform`: Target platform (default: auto-detect).

#### Examples:
```bash
# Get latest version for current platform
vulkan-utils latest-version

# Get latest version for specific platform
vulkan-utils latest-version --platform windows
```

### `sdk-info`

Get detailed information about a Vulkan SDK version.

#### Options:
- `--version`: SDK version (default: "latest").
- `--platform`: Target platform (default: auto-detect).

#### Examples:
```bash
# Get info for latest SDK
vulkan-utils sdk-info

# Get info for specific version
vulkan-utils sdk-info --version 1.3.224.0 --platform linux
```

## Platform-Specific Notes

### macOS

After installation, you may need to set environment variables if system-wide installation fails:

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

## Using with uvx

All commands can be run directly with `uvx` without installing vulkan-utils globally:

```bash
# Using uvx (no installation required)
uvx vulkan_utils install-sdk
uvx vulkan_utils latest-version
uvx vulkan_utils sdk-info --version 1.3.224.0
```

This is particularly useful for:
- CI/CD pipelines
- One-time usage
- Avoiding global package installations
- Always using the latest version

## Error Handling

The tool provides clear error messages and will:
- Verify download integrity with SHA hashes
- Detect existing installations
- Provide platform-specific setup instructions
- Show progress for long-running operations

## Conclusion

This reference provides a comprehensive overview of the Vulkan Utils CLI commands. For installation instructions, see the [Installation Guide](installation.html), and for usage examples, see the [Usage Guide](usage.html).

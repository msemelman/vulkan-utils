# GitHub Actions Setup for vulkan_utils

This repository includes GitHub Actions workflows for continuous integration and automated publishing.

## Workflows

### 1. CI Workflow (`.github/workflows/ci.yml`)
- **Triggers**: Push to main/master branch, pull requests
- **Purpose**: Run tests and build checks across multiple OS and Python versions
- **Matrix**: Tests on Ubuntu, Windows, and macOS with Python 3.10, 3.11, and 3.12

### 2. Publish Workflow (`.github/workflows/publish.yml`)
- **Triggers**: 
  - Version tags (e.g., `v0.1.7`, `v1.0.0`)
  - GitHub releases
  - Manual dispatch
- **Purpose**: Build and publish the package to PyPI


## Usage

### Automatic Publishing on Release
1. Create a new release on GitHub
2. The workflow will automatically build and publish to PyPI


## Workflow Features

- **Build verification**: Ensures package builds correctly
- **Artifact upload**: Stores built packages for download
- **TestPyPI staging**: Optional publishing to TestPyPI before production
- **Security**: Uses environment protection and secrets

## Troubleshooting

### Common Issues:
1. **Import errors**: Make sure all dependencies are in `pyproject.toml`
2. **Build failures**: Check that `uv build` works locally
3. **Permission errors**: Verify API tokens and trusted publishing setup
4. **Version conflicts**: Ensure version numbers are properly incremented

### Local Testing:
```bash
# Test the build process locally
uv build

# Test installation
uv run pip install dist/*.whl

# Test CLI
uv run vulkan-utils --help
```

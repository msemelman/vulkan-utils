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

## Setup Instructions

### 1. Repository Secrets

You need to set up the following secrets in your GitHub repository:

#### For Token-based Publishing:
1. Go to your repository → Settings → Secrets and variables → Actions
2. Add these secrets:
   - `PYPI_API_TOKEN`: Your PyPI API token
   - `TEST_PYPI_API_TOKEN`: Your TestPyPI API token (optional, for testing)

#### How to get PyPI tokens:
1. Go to [PyPI](https://pypi.org) and log in
2. Go to Account Settings → API tokens
3. Create a new token with appropriate scope
4. Copy the token and add it to GitHub secrets

### 2. Trusted Publishing (Recommended Alternative)

Instead of using API tokens, you can set up trusted publishing:

1. Go to [PyPI](https://pypi.org) → Your projects → Manage → Publishing
2. Add a new trusted publisher with these settings:
   - **PyPI Project Name**: `vulkan_utils`
   - **Owner**: Your GitHub username
   - **Repository name**: `vulkan_utils`
   - **Workflow filename**: `publish.yml`
   - **Environment name**: `pypi-trusted`

### 3. GitHub Environments (Optional but Recommended)

Set up environments for better security:

1. Go to your repository → Settings → Environments
2. Create these environments:
   - `testpypi` (for TestPyPI publishing)
   - `pypi` (for PyPI publishing with tokens)
   - `pypi-trusted` (for PyPI publishing with trusted publishing)
3. Add protection rules and required reviewers as needed

## Usage

### Automatic Publishing on Release
1. Create a new release on GitHub
2. The workflow will automatically build and publish to PyPI

### Manual Publishing
1. Go to Actions → Build and Publish Package
2. Click "Run workflow"
3. This will publish to TestPyPI first

### Version Tagging
1. Update version in `vulkan_utils/__init__.py`
2. Create and push a git tag:
   ```bash
   git tag v0.1.7
   git push origin v0.1.7
   ```
3. The workflow will trigger automatically

## Workflow Features

- **Multi-platform testing**: Tests on Linux, Windows, and macOS
- **Multi-version Python support**: Tests Python 3.10, 3.11, and 3.12
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

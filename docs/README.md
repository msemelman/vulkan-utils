# Vulkan Utils Documentation

This directory contains the documentation site for Vulkan Utils, built with Jekyll and deployed to GitHub Pages.

## Structure

- `_config.yml` - Jekyll configuration
- `index.md` - Homepage
- `installation.md` - Installation guide
- `usage.md` - Usage examples and guides
- `reference.md` - Complete CLI reference
- `Gemfile` - Ruby dependencies for GitHub Pages

## Local Development

To run the docs locally:

1. Install Ruby and Bundler
2. Navigate to the docs directory:
   ```bash
   cd docs
   ```
3. Install dependencies:
   ```bash
   bundle install
   ```
4. Run Jekyll:
   ```bash
   bundle exec jekyll serve
   ```
5. Visit `http://localhost:4000/vulkan_utils/`

## Deployment

The documentation is automatically deployed to GitHub Pages when changes are pushed to the main branch. The deployment is handled by the `.github/workflows/pages.yml` workflow using Jekyll with GitHub Pages dependencies preinstalled.

**Live site**: https://msemelman.github.io/vulkan_utils/

## Content Sources

The documentation content is derived from:
- `../README.md` - Main project README
- Existing CLI reference documentation
- Platform-specific setup instructions

The documentation is organized into logical sections for better navigation and user experience.

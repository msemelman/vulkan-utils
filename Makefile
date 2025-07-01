.PHONY: help install test lint format build clean ci run

# Default target
help:
	@echo "Available targets:"
	@echo "  install    Install development dependencies"
	@echo "  test       Run tests with coverage"
	@echo "  lint       Run linting and type checking"
	@echo "  format     Format code"
	@echo "  build      Build the package"
	@echo "  clean      Clean build artifacts"
	@echo "  ci         Run full CI pipeline locally"
	@echo "  run        Run vulkan-utils (use with ARGS=...)"

install:
	uv sync --dev

test:
	uv run pytest -v --cov=vulkan_utils --cov-report=term-missing

lint:
	uv run ruff check vulkan_utils/ tests/
	uv run mypy vulkan_utils/

format:
	uv run ruff check --fix vulkan_utils/ tests/

build:
	uv build

clean:
	rm -rf build/ dist/ *.egg-info/
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete 2>/dev/null || true

ci: install lint test build

run:
	uv run vulkan-utils $(ARGS)

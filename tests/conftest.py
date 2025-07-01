"""Test configuration for pytest."""

from pathlib import Path

import pytest


@pytest.fixture
def temp_download_dir(tmp_path: Path) -> Path:
    """Create a temporary directory for downloads during testing.

    Parameters
    ----------
    tmp_path : Path
        Temporary path fixture provided by pytest

    Returns
    -------
    Path
        Path to temporary download directory
    """
    download_dir = tmp_path / "downloads"
    download_dir.mkdir()
    return download_dir


@pytest.fixture
def temp_install_dir(tmp_path: Path) -> Path:
    """Create a temporary directory for installations during testing.

    Parameters
    ----------
    tmp_path : Path
        Temporary path fixture provided by pytest

    Returns
    -------
    Path
        Path to temporary installation directory
    """
    install_dir = tmp_path / "install"
    install_dir.mkdir()
    return install_dir

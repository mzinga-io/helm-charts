.PHONY: install-pre-commit check-pre-commit setup

# Install pre-commit via Homebrew
install-pre-commit:
	@echo "Installing pre-commit with Homebrew..."
	@if ! command -v brew >/dev/null 2>&1; then \
		echo "Homebrew is not installed. Please install Homebrew first: https://brew.sh/"; \
		exit 1; \
	fi
	brew install pre-commit
	@echo "pre-commit installed successfully."

# Check pre-commit installation
check-pre-commit:
	@echo "Checking pre-commit installation..."
	@if ! command -v pre-commit >/dev/null 2>&1; then \
		echo "pre-commit is not installed. Run 'make install-pre-commit'."; \
		exit 1; \
	else \
		pre-commit --version; \
	fi

# Install pre-commit if missing and set up git hooks
setup: check-pre-commit
	@echo "Installing git hooks with pre-commit..."
	pre-commit install
	pre-commit install-hooks
	@echo "Git hooks installed successfully."

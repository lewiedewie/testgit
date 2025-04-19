PYTHON_VERSION = 3.13.0
VENV_NAME = testgit-env

.PHONY: setup install clean envpath

setup:
	@echo "🔍 Checking for pyenv and pyenv-virtualenv..."
	@command -v pyenv >/dev/null 2>&1 || { echo >&2 "❌ pyenv not found. Please install pyenv."; exit 1; }
	@pyenv commands | grep -q virtualenv || { echo >&2 "❌ pyenv-virtualenv not found. Please install it."; exit 1; }

	@echo "🐍 Checking if virtualenv '$(VENV_NAME)' exists..."
	@pyenv versions --bare | grep -q "^$(VENV_NAME)$$" || pyenv virtualenv $(PYTHON_VERSION) $(VENV_NAME)

	@echo "📌 Setting local Python version to $(VENV_NAME)"
	@pyenv local $(VENV_NAME)

	@$(MAKE) install
	@$(MAKE) envpath

install:
	@echo "📦 Installing dependencies..."
	@pip install --upgrade pip
	@if [ -f requirements.txt ]; then pip install -r requirements.txt; else echo "⚠️  No requirements.txt found."; fi

envpath:
	@echo "📂 Virtualenv path:"
	@echo "$$(pyenv prefix $(VENV_NAME))"

clean:
	@echo "🧹 Cleaning up Python cache files..."
	@find . -type d -name "__pycache__" -exec rm -r {} +
	@find . -type f -name "*.pyc" -delete

nuke:
	@echo "🔥 Removing virtualenv '$(VENV_NAME)'..."
	@pyenv uninstall -f $(VENV_NAME)
	@rm -f .python-version

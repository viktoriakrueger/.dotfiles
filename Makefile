.PHONY: help
help:
	@echo "Available targets:"
	@echo "  help         - Display this help message."
	@echo "  test         - Display detected OS, current directory, and username."
	@echo "  setup        - Run the setup process which includes test, scripts, symlinks, alacritty, and os."
	@echo "  os           - Perform OS-specific setup tasks (macOS, Linux, or WSL)."
	@echo "  scripts      - Make all scripts in the 'scripts' directory executable and symlink them to '/usr/local/bin/'."
	@echo "  symlinks     - Create necessary symlinks by running the 'src/symlinks' script."
	@echo "  subl         - Initialize Sublime Text configuration."

# Detect the operating system
ifeq ($(OS),Windows_NT)
    OS := windows
else
    OS := $(shell src/detect_os)
endif

CUR_DIR := $(shell pwd)
USERNMAE := $(shell whoami)

.PHONY: test
test:
	@echo 'OS = $(OS)'
	@echo 'CUR_DIR = $(CUR_DIR)'
	@echo 'USERNMAE = $(USERNMAE)'

.PHONY: setup
setup: test scripts symlinks os
	@echo "fnished"

.PHONY: scripts
scripts:
	chmod +x $(CUR_DIR)/src/*; \
	sudo ln -sf $(CUR_DIR)/src/* /usr/local/bin/;

.PHONY: symlinks
symlinks:
	$(shell src/symlinks)

.PHONY: subl
subl:
	@if [ "$(OS)" = "osx" ]; then \
		echo "init sublime text"; \
			mkdir -p $(HOME)/Library/Application\ Support/Sublime\ Text/; \
			mkdir -p $(HOME)/Library/Application\ Support/Sublime\ Text/Packages/; \
			mkdir -p $(HOME)/Library/Application\ Support/Sublime\ Text/Packages/User/; \
			sudo ln -sf $(CUR_DIR)/HOME/.config/sublime-text/Sublime\ Text/Packages/User/* $(HOME)/Library/Application\ Support/Sublime\ Text/Packages/User/; \
			sudo ln -sf $(CUR_DIR)/HOME/.config/sublime-text/Sublime\ Text/Packages/Dracula\ Color\ Scheme $(HOME)/Library/Application\ Support/Sublime\ Text/Packages; \
			sudo rm -f $(HOME)/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings; \
			sudo cp -f $(CUR_DIR)/HOME/.config/sublime-text/Sublime\ Text/Packages/User/Preferences.sublime-settings $(HOME)/Library/Application\ Support/Sublime\ Text/Packages/User/; \
	fi

.PHONY: os
os:
	if [ "$(OS)" = "osx" ]; then \
		echo "$(OS) detected"; \
		echo "run .macos"; \
		sudo -v; \
		while true; do sudo -n true; sleep 60; kill -0 $$ || exit; done 2>/dev/null & \
		bash -c "source $(CUR_DIR)/OS/.macos"; \
		echo "install Brewfile"; \
		brew bundle --file=$(CUR_DIR)/OS/Brewfile; \
		echo "source duti-file"; \
		bash -c "source $(CUR_DIR)/OS/duti.sh"; \
	fi
	@if [ -z "`${SHELL} -c 'echo ${ZSH_VERSION}'`" ]; then \
	  sudo sh -c "echo $(which zsh) >> /etc/shells" \
	  chsh -s "$(which zsh)"; \
	fi

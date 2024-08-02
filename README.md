`make help:`

```zsh
help:
        @echo "Available targets:"
        @echo "  help         - Display this help message."
        @echo "  test         - Display detected OS, current directory, and username."
        @echo "  setup        - Run the setup process which includes test, scripts, symlinks, alacritty, and os."
        @echo "  os           - Perform OS-specific setup tasks (macOS, Linux, or WSL)."
        @echo "  scripts      - Make all scripts in the 'scripts' directory executable and symlink them to '/usr/local/bin/'."
        @echo "  symlinks     - Create necessary symlinks by running the 'scripts/symlinks' script."
        @echo "  subl         - Initialize Sublime Text configuration."
```

## package manager

```
if [[ "$(uname)" == "Darwin" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
  sudo apt update
fi
```

## git & make

```
if [[ "$(uname)" == "Darwin" ]]; then
    brew install git make
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    sudo apt install git build-essential
fi
```

## clone `.dotfiles`

```
git clone --recurse-submodules https://github.com/viktoriakrueger/.dotfiles.git
cd ~/.dotfiles
git submodule update --init --recursive
git pull --recurse-submodules
```

## run installation file

`make setup`


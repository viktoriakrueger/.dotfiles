mkdir $HOME/.vscode; mkdir $HOME/.vscode/extensions; ln -sf $DOTFILES/vscode/.vscode/argv.json $HOME/.vscode/

ln -sf $DOTFILES/vscode/settings.json $HOME/Library/Application\ Support/Code/User

ln -sf $DOTFILES/snippets/ $HOME/Library/Application\ Support/Code/User

ln -sf $DOTFILES/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User

ln -sf $DOTFILES/vscode/snippets $HOME/Library/Application\ Support/Code/User

# dracula theme
git clone https://github.com/dracula/visual-studio-code.git $HOME/.vscode/extensions/theme-dracula; cd $HOME/.vscode/extensions/theme-dracula; npm install; npm run build

# git clone https://github.com/gitkraken/vscode-gitlens.git $HOME/.vscode/extensions/vscode-gitlens ; cd $HOME/.vscode/extensions/vscode-gitlens; npm install --force; npm run build


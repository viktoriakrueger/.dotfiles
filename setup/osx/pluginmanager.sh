# zsh with all plugins
mkdir ~/.zsh
ln -sf ~/.dottfiles/zsh/.zshrc_mac ~/.zshrc
zsh_add_plugin 'hlissner/zsh-autopair'
zsh_add_plugin 'zsh-users/zsh-completions'
zsh_add_plugin 'romkatv/powerlevel10k'
zsh_add_plugin 'zsh-users/zsh-syntax-highlighting'
zsh_add_plugin 'zsh-users/zsh-autosuggestions'





# vim with all plugis
mkdir ~/.config/nvim && ln -sf ~/.dotfiles/nvim/* ~/.config/nvim && mkdir ~/.config/nvim/pack/ && mkdir ~/.config/nvim/pack/plugins/ && mkdir ~/.config/nvim/pack/plugins/start && mkdir ~/.config/nvim/pack/plugins/opt
vim_add_plugin 'dense-analysis/ale'
vim_add_plugin 'neoclide/coc.nvim'
vim_add_plugin 'chrisbra/csv.vim'
vim_add_plugin 'junegunn/fzf.vim'
vim_add_plugin 'jupyter-vim/jupyter-vim'
vim_add_plugin 'iamcco/markdown-preview.vim'
vim_add_plugin 'gaalcaras/ncm-R'
vim_add_plugin 'ncm2/ncm2'
vim_add_plugin 'ncm2/ncm2-bufword'
vim_add_plugin 'ncm2/ncm2-jedi'
vim_add_plugin 'ncm2/ncm2-path'
vim_add_plugin 'preservim/nerdtree'
vim_add_plugin 'jalvesaq/Nvim-R'
vim_add_plugin 'nvim-treesitter/nvim-treesitter'
vim_add_plugin 'roxma/nvim-yarp'
vim_add_plugin 'nvim-lua/plenary.nvim'
vim_add_plugin 'kevinhwang91/rnvimr'
vim_add_plugin 'nvim-telescope/telescope.nvim'
vim_add_plugin 'dracula/vim'
vim_add_plugin 'vim-airline/vim-airline'
vim_add_plugin 'tpope/vim-commentary'
vim_add_plugin 'sheerun/vim-polyglot'
vim_add_plugin 'honza/vim-snippets'
vim_add_plugin 'dhruvasagar/vim-table-mode'
vim_add_plugin 'glepnir/dashboard-nvim'

# neovim dependencies
gem install neovim
yarn global add neovim
pip3 install neovim
pip3 install pynvim
cd ~/.config/nvim/pack/plugins/start/coc.nvim && yarn install
sudo ln -sf ~/.dotfiles/nvim/spell /usr/local/Cellar/neovim/0.6.1/share/nvim/runtime/
#nvim "+:CocInstall coc-json coc-pairs coc-r-lsp coc-snippets coc-tsserver coc-vimlsp"


# tmux with all plugins
mkdir ~/.tmux && mkdir ~/.tmux/plugins
ln -sf ~/.dotfiles/tmux/.osx_tmux.conf ~/.tmux.conf
tmux_add_plugin 'tmux-plugins/tmux-battery'
tmux_add_plugin 'tmux-plugins/tmux-copycat'
tmux_add_plugin 'tmux-plugins/tmux-cpu'
tmux_add_plugin 'tmux-plugins/tmux-maildir-counter'
tmux_add_plugin 'tmux-plugins/tmux-newsboat'
tmux_add_plugin 'tmux-plugins/tmux-online-status'
tmux_add_plugin 'tmux-plugins/tmux-open'
tmux_add_plugin 'tmux-plugins/tmux-sensible'
tmux_add_plugin 'tmux-plugins/tmux-sidebar'
tmux_add_plugin 'tmux-plugins/tmux-urlview'
tmux_add_plugin 'tmux-plugins/tmux-yank'
tmux_add_plugin 'jaclu/tmux-menus'
tmux_add_plugin 'xamut/tmux-weather'
tmux_add_plugin 'schasse/tmux-jump'
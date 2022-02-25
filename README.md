# Dotfiles

## Getting Started

### Pre Reqs

1. Make sure that `vim-plug` is installed for either vim or neovim
2. With nvim you need to copy `init.vim` into you `~/.config/nvim/init.vim`
3. Similarly copy the coc-settings.json into your `~/.config/nvim/coc-settings.json`


### Install

1. Open neovim and run `:PlugInstall`

2. *Coc Setup*
	- Navigate to `~/.local/share/nvim/plugged/coc.nvim`
	- run `yarn install`
	- run `yarn build`
	- **NOTE** Any new coc-<package> that is not listed in the init.vim config needs to be installed
	  using `:CocInstall coc-<package>`

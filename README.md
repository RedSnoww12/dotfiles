# dotfiles

My personal dev environment configuration.

## What's included

| Tool | Config | Description |
|------|--------|-------------|
| **Zsh** | `.zshrc` | Shell config with Oh My Zsh |
| **Starship** | `.config/starship.toml` | Terminal prompt (nerd-font-symbols preset) |
| **Neovim** | `.config/nvim/` | Full Neovim setup with LSP, Treesitter, Telescope |
| **Tmux** | `.tmux.conf` | Tmux with Catppuccin theme |
| **Powerlevel10k** | `.p10k.zsh` | P10k config (backup, currently using Starship) |

## Theme

Everything runs on **Catppuccin Mocha** - Neovim, Tmux, and Lualine.

## Prerequisites

- [Oh My Zsh](https://ohmyz.sh/)
- [Starship](https://starship.rs/) - `brew install starship`
- [Neovim](https://neovim.io/) - `brew install neovim`
- [Tmux](https://github.com/tmux/tmux) - `brew install tmux`
- [TPM](https://github.com/tmux-plugins/tpm) - Tmux Plugin Manager
- A [Nerd Font](https://www.nerdfonts.com/) installed and set in your terminal

## Installation

```bash
git clone git@github.com:redsnoww/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

The install script creates symlinks and backs up any existing configs to `.bak` files.

## After install

1. Restart your terminal or `source ~/.zshrc`
2. Open Neovim - plugins will auto-install via Lazy
3. In Tmux, press `prefix + I` to install plugins via TPM

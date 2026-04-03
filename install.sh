#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing dotfiles from $DOTFILES_DIR"

# Create .config directory if needed
mkdir -p ~/.config

# Symlink files
link() {
  local src="$DOTFILES_DIR/$1"
  local dest="$2"

  if [ -e "$dest" ] || [ -L "$dest" ]; then
    echo "  Backing up existing $dest -> ${dest}.bak"
    mv "$dest" "${dest}.bak"
  fi

  ln -sf "$src" "$dest"
  echo "  Linked $dest -> $src"
}

echo ""
echo "=== Shell ==="
link ".zshrc" "$HOME/.zshrc"
link ".p10k.zsh" "$HOME/.p10k.zsh"

echo ""
echo "=== Starship ==="
link ".config/starship.toml" "$HOME/.config/starship.toml"

echo ""
echo "=== Neovim ==="
link ".config/nvim" "$HOME/.config/nvim"

echo ""
echo "=== Kitty ==="
link ".config/kitty" "$HOME/.config/kitty"

echo ""
echo "=== Tmux ==="
link ".tmux.conf" "$HOME/.tmux.conf"

echo ""
echo "Done! Restart your terminal or run: source ~/.zshrc"

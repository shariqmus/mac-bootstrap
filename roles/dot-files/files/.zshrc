source ~/.x_aliases
source ~/.x_exports

export PATH="/opt/homebrew/bin:$PATH"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

eval "$(starship init zsh)"
source <(fzf --zsh)

echo "Sourced .zshrc"

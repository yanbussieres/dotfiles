eval "$(starship init zsh)"
alias ls="exa -1 --icons"
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.config/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


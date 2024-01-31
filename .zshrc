ZSH="$HOME/.oh-my-zsh"

#Theme
ZSH_THEME=""

#Plugins
plugins=(git 
	zsh-autosuggestions
	zsh-syntax-highlighting
	z)

source $ZSH/oh-my-zsh.sh

#Star Ship

# Created by `pipx` on 2023-11-19 14:26:42
export PATH="$PATH:/Users/y/.local/bin"

# starship
eval "$(starship init zsh)"

source /Users/y/.config/broot/launcher/bash/br


# Load Angular CLI autocompletion.
source <(ng completion script)

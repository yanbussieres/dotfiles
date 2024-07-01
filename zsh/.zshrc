
# Path to your oh-my-zsh installation.

export GCLOUD_PROJECT=ovet-3bbf5
export GCLOUD_LOCATION=us-east4


export ZSH="$HOME/.oh-my-zsh"
export VISUAL="nvim"
export EDITOR="$VISUAL"
ZSH_THEME=""


plugins=(git
gh
nvm
ripgrep
fzf
z
macos
zsh-autocomplete
brew
mix
python
fd
docker
asdf
starship
)

source $ZSH/oh-my-zsh.sh


alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias alle='nvim /Users/y/Documents/ovet/extr/alle.md'
export PATH="$PATH":"$HOME/.pub-cache/bin"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/y/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/y/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/y/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/y/google-cloud-sdk/completion.zsh.inc'; fi



source /Users/y/.config/broot/launcher/bash/br

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"




export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

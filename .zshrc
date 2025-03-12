
alias nvim='~/nvim-macos-arm64/bin/nvim'
alias nv='~/nvim-macos-arm64/bin/nvim'

export VISUAL=vim
export EDITOR=vim


autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/y/.docker/completions $fpath)
# End of Docker CLI completions
fpath+="/Users/y/.zsh/completions/:$FPATH"
autoload -U compinit; compinit
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$HOME/.zcompcache"
zstyle ':completion:*' menu select
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'

fpath+=("$(brew --prefix)/share/zsh/site-functions")

tmux () {
   if [ "$#" -eq 0 ]
      then command tmux new-session -s 'MAIN'
      else command tmux "$@"
   fi
   }

function sesh-sessions() {
  {
    exec </dev/tty
    exec <&1
    local session
    session=$(sesh list -t -c | fzf --height 40% --reverse --border-label ' sesh ' --border --prompt '⚡  ')
    zle reset-prompt > /dev/null 2>&1 || true
    [[ -z "$session" ]] && return
    sesh connect $session
  }
}

zle     -N             sesh-sessions
bindkey -M emacs '\es' sesh-sessions
bindkey -M vicmd '\es' sesh-sessions
bindkey -M viins '\es' sesh-sessions
autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

zstyle :prompt:pure:path color yellow 
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
prompt pure

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


alias ls='eza'
alias lg='lazygit'
alias zshs='source ~/.zshrc'
alias zshe='nvim ~/.zshrc'

alias nvimclean='
rm -rf ~/.local/share/nvim \
rv ~/.local/state/nvim \
rv ~/.cache/nvim'



eval "$(zoxide init zsh)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.local/bin/env"


# bun completions
[ -s "/Users/y/.bun/_bun" ] && source "/Users/y/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


source <(fzf --zsh)

export FZF_CTRL_R_COMMAND=""
export FZF_DEFAULT_OPTS='--height 40% --tmux bottom,40% --layout reverse --border top'
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"

eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"
. "/Users/y/.deno/env"


. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh --disable-up-arrow)"

source /Users/y/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"



#!/bin/zsh

alias ls='eza'
alias l='ls --icons'
alias ll='ls -l --git -s date --smart-group --accessed --no-permissions --grid --no-user --no-filesize -o --time-style relative -s modified -r -A'
alias lf='ls --icons -f -s accessed -A'
alias ld='ls -l --icons -D -s accessed -A'
alias lg='ls --git -s date'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree -L 2'

alias szsh='source ~/.zshrc'
alias ezsh='nvim ~/.zshrc'

alias nv='nvim'
alias nc='nvim --clean'

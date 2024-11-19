#!/bin/zsh

# gcp
if [ -f '/Users/y/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/y/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/y/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/y/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completio:q

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# obsidian
function on {
    local suffix=$1
    local filename="/Users/y/vaults/work/$(date +%s)-${suffix}.md"
    nvim $filename +w
}


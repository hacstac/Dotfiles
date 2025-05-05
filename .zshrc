# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Set theme (simplified configuration)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins configuration
plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-interactive-cd
  fzf
  alias-finder
  docker
  extract
  copydir
  sublime
  vscode
)

source $ZSH/oh-my-zsh.sh

# History configuration (simplified)
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
setopt append_history extended_history hist_ignore_all_dups hist_reduce_blanks

# Key bindings (cleaned up)
bindkey '^H' backward-kill-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# FZF configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Go Version Manager (fixed configuration)
export GVM_ROOT="$HOME/.gvm"
if [[ -s "$GVM_ROOT/scripts/gvm" ]]; then
  source "$GVM_ROOT/scripts/gvm"
  # Default to system Go if installed
  command -v go >/dev/null || gvm use system >/dev/null
fi

# Cleaned PATH configuration
# Individual PATH exports (correct order)
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"  # 1. Add krew bin first
export PATH="$HOME/.local/user-bin:$PATH"          # 2. Add user-bin before krew
export PATH="$HOME/.local/bin:$PATH"               # 3. Add .local/bin first in PATH

# Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Autojump configuration
if [[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]]; then
  source $HOME/.autojump/etc/profile.d/autojump.sh
  autoload -Uz compinit && compinit -u
fi

[[ -f ~/.config/zsh/starship.zsh ]] && source ~/.config/zsh/starship.zsh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
export LANG="en_US@UTF-8"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"

# Removed redundant/conflicting configurations:
# - pyenv, rust, rvm paths
# - duplicate gvm sourcing
# - problematic PATH exports with redirection
# - duplicate powerlevel10k instant prompt
# - conflicting Go path exports

# Finalize environment
export OPENER=/usr/bin/subl
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# restic
export RESTIC_REPOSITORY="sftp:zrsync.net:ws_ubuntu_opstree"

# borg
export BORG_RSH='ssh -i ~/.ssh/cloud'
export BORG_PASSPHRASE=''
export BORG_REPO='ssh://borg@10.0.5.13:30022/./backups/macbookair'

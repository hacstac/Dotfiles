# Setup fzf
# ---------
if [[ ! "$PATH" == */home/akashrajvanshi/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/akashrajvanshi/.fzf/bin"
fi

eval "$(fzf --bash)"

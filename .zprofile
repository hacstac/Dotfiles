
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=~/.local/bin/:$PATH
export TERM=xterm-256color

export EDITOR=/usr/bin/vim;
# export LANG='en_US.UTF-8';
# export LC_ALL='en_US.UTF-8';
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Fafacxdxbxegedabagacad

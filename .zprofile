
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH="$HOME/.cargo/bin:$PATH"

export GOROOT=/usr/local/go
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
export PATH="~/.npm-global/bin:$PATH"
export PATH=~/.local/bin/:$PATH
export TERM=xterm-256color
export PATH="$HOME/.gem/ruby/bin:$PATH"
source $(dirname $(gem which colorls))/tab_complete.sh

export EDITOR=/usr/bin/vim;
# export LANG='en_US.UTF-8';
# export LC_ALL='en_US.UTF-8';
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Fafacxdxbxegedabagacad

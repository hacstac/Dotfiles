### Setup Go Lang Env

- [golang-tools-install-script](https://github.com/canha/golang-tools-install-script)
- [gvm](https://github.com/moovweb/gvm)

```bash
# ============Manual Method===============#
# Download Latest GO
$ wget https://golang.org/dl/go1.16.3.linux-amd64.tar.gz

# Remove any old go installation & extract this archive into /usr/local
$ sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ./go1.16.3.linux-amd64.tar.gz

# Create a Directory for go packages
$ mkdir go

# Add all these to ~/.zshrc
export PATH=$PATH:/usr/local/go/bin
export GOROOT=/usr/local/go
export GOPATH=~/go
export PATH=$PATH:~/go/bin

$ source ~/.zshrc

# Check Version
$ go version
go version go1.16.3 linux/amd64

# Test
$ go get github.com/charmitro/kubesecret
$ kubesecret # working

$ go run main.go
Hello World!

# =====GVM======= #

$ sudo apt-get install curl git mercurial make binutils bison gcc build-essential -y
$ rm -rf /home/$USER/.gvm
$ zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

$ source /home/$USER/.gvm/scripts/gvm
$ gvm listall

# If you are getting compiling issues ( while installing )
$ gvm install go1.4 -B
$ gvm use go1.4
export GOROOT_BOOTSTRAP=$GOROOT

$ gvm install go1.16.3
$ gvm use go1.16.3

# Add this to ~/.zshrc
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export PATH=$PATH:/home/$USER/.gvm/gos/go1.16.3/bin
export GOROOT=/home/$USER/.gvm/gos/go1.16.3
export GOPATH=/home/$USER/.gvm/pkgsets/go1.16.3/global
export PATH=$PATH:/home/$USER/.gvm/pkgsets/go1.16.3/global/bin

$ echo $GOROOT
$ echo $GOPATH

# ====go-script====#
$ wget -q -O - https://git.io/vQhTU | bash
$ echo $GOROOT
$ echo $GOPATH
```

---

### Setup NodeJS

- [NVM](https://github.com/nvm-sh/nvm)

```bash
# NVM
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Add this to ~/.zshrc
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

$ source ~/.zshrc
$ nvm install node
$ nvm install --lts
$ nvm use --lts

# Check Version
$ node -v
$ npm -v
$ npx -v
```

---

### Setup Python

- [pyenv](https://github.com/pyenv/pyenv)
- [pyenv-installer](https://github.com/pyenv/pyenv-installer)

```bash
# Build Dependencies
# Ubuntu & Debian
$ sudo apt-get update; sudo apt-get install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Fedora
$ sudo dnf install make gcc zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel

# Arch
$ sudo pacman -S base-devel openssl zlib

# Installation
$ curl https://pyenv.run | bash

# Add this to ~/.zshrc
export PATH="/home/$USER/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

$ exec $SHELL
$ pyenv install 3.9.4
$ pyenv global 3.9.4

# Virtualenv
$ pyenv virtualenv 3.9.4 my_project
$ pyenv local my_project
$ pyenv activate my_project
$ pyenv deactivate my_project
```

---

### Setup Rust & Cargo Env

```bash
# Installation
# On Ubuntu/Debian
$ sudo apt-get install build-essential -y

# On Fedora/CentOS
$ sudo dnf install cmake gcc -y

# Install Curl
$ sudo apt-get install curl -y
$ sudo dnf install curl

$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Add to the path ( Put this in ~/.zshrc )
$ export PATH="/home/$HOME/.cargo/bin:$PATH"

# To Check
$ rustc --version
rustc 1.51.0 (2fd73fabe 2021-03-23)

$ cargo -V
cargo 1.51.0 (43b129a20 2021-03-16)
```

---

### Setup Ruby & gem

- [RVM](https://rvm.io/)
- [Rbenv](https://github.com/rbenv/rbenv)

```bash
# Rbenv
$ sudo apt install rbenv
$ rbenv install -l
$ rbenv install 2.4.1
$ rbenv init
$ eval "$(rbenv init -)"
$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

# RVM
$ sudo apt install ruby-full
$ sudo apt install gnupg2
$ gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
$ curl -sSL https://get.rvm.io | bash -s stable

# Add this to ~/.zshrc
export PATH="$PATH:$HOME/.rvm/bin"

$ source /home/$USER/.rvm/scripts/rvm
$ rvm install 2.7
$ rvm use 2.7

$ ruby -v
ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x86_64-linux]

$ gem install colorls
```


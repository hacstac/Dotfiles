**AdvancedNewFile - Fast creation of files and directories in a recursive way. Inspired by the Vim plugin.**

```bash
$ Install Python3 and Pip And Setup Path for Python
$ pip3 install --user --upgrade advance-touch

# Setup Path in .bashrc or .bashprofile
$ export PATH="/home/${USER}/.local/bin:$PATH"

# usage
$ ad project/js
```

**autojump - A cd command that learns - easily navigate directories from the command line**

```bash
$ git clone git://github.com/wting/autojump.git
$ cd autojump
$ ./install.py

# add path in .bashrc or .bashprofile
$ [[ -s /home/${USER}/.autojump/etc/profile.d/autojump.sh ]] && source /home/${USER}/.autojump/etc/profile.d/autojump.sh

# usage
$ First visit directories
$ j directory
$ jc directory // opens a child directory
```

**bashmarks - Directory bookmarks for the shell**

```bash
$ git clone git://github.com/huyng/bashmarks.git
$ cd bashmarks
$ make install
$ cp bashmarks.sh ~/.local/bin
$ source ~/.local/bin/bashmarks.sh from within your ~.bash_profile or ~/.bashrc file

# Unalias : if g and l are set to aliases
$ unalias g
$ unalias l

# Usage
$ s <bookmark_name> - Saves the current directory as "bookmark_name"
$ g <bookmark_name> - Goes (cd) to the directory associated with "bookmark_name"
$ p <bookmark_name> - Prints the directory associated with "bookmark_name"
$ d <bookmark_name> - Deletes the bookmark
$ l                 - Lists all available bookmarks
```

**fd - A simple, fast and user-friendly alternative to find.fd passwd /etc**

```bash
$ wget https://github.com/sharkdp/fd/releases/download/v7.4.0/fd_7.4.0_amd64.deb
$ sudo dpkg -i ./fd_7.4.0_amd64.deb
$ fd

# Usage
$ fd passwd /etc
```

**fzf - A command-line fuzzy finder**

```bash
$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ ~/.fzf/install
$ source ~/.bashrc
$ add [ -f ~/.fzf.bash ] && source ~/.fzf.bash to .bash_profile

# Usage
$ CTRL+ R history
$ ALT+C Cd into a directory
$ CTRL + T
```

**hr - `<hr />` for your terminal**

```bash
$ mkdir ~/bin
$ curl https://raw.githubusercontent.com/LuRsT/hr/master/hr > ~/bin/hr
$ chmod +x ~/bin/hr
$ export PATH="/home/${USER}/bin:$PATH"

# Usage
$ hr
```

**Dropbox - cli Installation**

```bash
$ wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
$ wget -O /usr/local/bin/dropbox "https://www.dropbox.com/download?dl=packages/dropbox.py"
$ chmod +x /usr/local/bin/dropbox
$ ~/.dropbox-dist/dropboxd

# Location
$ ~/Dropbox

# Usage
$ Dropbox

# Install mackup (Keep your application settings in sync.)
$ python3 -m pip install mackup
$ mackup backup // this will integrate with dropbox and copy config files to drop box folder (Mackup)
$  mackup list
```

**thefuck - Fix common shell mistakes by using an easy to remember command**

```bash
$ Install Python
$ python3 -m pip install thefuck
$ add this eval $(thefuck --alias) to .bash_profile
```

**bcal - Byte CALculator for storage conversions and calculations**

```bash
$ wget https://github.com/jarun/bcal/releases/download/v2.2/bcal_2.2-1_ubuntu18.04.amd64.deb
$ sudo dpkg -i ./bcal_2.2-1_ubuntu18.04.amd64.deb
$ bcal
```

**catcli - The command line catalog tool for your offline data**

```bash
$ git clone https://github.com/deadc0de6/catcli && cd catcli
$ sudo python3 setup.py install
$ catcli

# usage
$ catcli index --meta=hello network /etc/network
$ catcli ls
$ catcli tree
$ catcli graph

# For graph
$ apt install graphviz
$ catcli graph network
$ dot network -T png -o /tmp/tree.png
$ /tmp tree.png
```

**bmon - Real-time network bandwidth monitor and rate estimator with human-friendly visual output**

```bash
$ git clone https://github.com/tgraf/bmon.git
$ cd bmon
$ apt-get install build-essential make libconfuse-dev libnl-3-dev libnl-route-3-dev libncurses-dev pkg-config dh-autoreconf
$ ./autogen.sh
$ ./configure
$ make
$ make install
$ bmon
```

**exa - A modern version of ls.**

```bash
$ sudo apt install cargo
$ cargo install exa
$ export PATH="/home/${USER}/.cargo/bin:$PATH"
$ reload

# Usage
$ exa -abghHliS
$ alias exa="exa -abghHliS"
$ exa
```

**ccat - ccat is the colorizing cat. It works similar to cat but displays content with syntax highlighting.**

```bash
$ wget https://github.com/jingweno/ccat/releases/download/v1.1.0/linux-amd64-1.1.0.tar.gz
$ tar -zxvf ./linux-amd64-1.1.0.tar.gz
$ cd into it and look there is a binary file called ccat
$ cp this binary file to anywhere where Path has been added

# usage
$ ccat --bg=dark akash.txt
$  ccat --palette
```

**progress - Linux tool to show progress for cp, rm, dd, and more...**

```bash
$ sudo apt install progress
$ progress -w // show progress
```

**isitup - Check whether a website is up or down.**

```bash
$ python3 -m pip install isitup
$ isitup inputhash.me
```
**dockly - Interactively manage Docker containers.**

```bash
$ _ npm install -g dockly
$ dockly
```

**cash-cli : Convert currency rates directly from your terminal!**

```bash
$ npm install --global cash-cli
$ cash 1 usd inr
```

**Doing : A command line tool for remembering what you were doing and tracking what you've done.**

```bash
$ sudo apt install ruby-full
$ sudo gem install doing

# Usage
$ doing now awesome-shell + awesome-cli-apps tag cli
$ doing finish
```
**del-cli & Trash-cli**

```bash
$ npm install --global trash-cli
$ npm install --global del-cli

# usage
$ trash directory
$ del directory or file
```

**navi : An interactive cheatsheet tool for the command-line**
```bash
$ bash <(curl -sL https://raw.githubusercontent.com/denisidoro/navi/master/scripts/install)
$ source <(navi widget bash) // add this to bash_profile or bashrc
```
**buku : Browser-independent bookmark manager**

```bash
$ python3 -m pip install buku
$ buku add url #tags
$ buku -p // show all bookmarks
```

**Pass : CLI Based Password Manager**

```bash
$ sudo pacman -S pass

# gui = qtpass

# Initialize Password Store
$ pass init email

# Create a New Password
$ pass insert example.com/user

# Retreve a password
$ pass example.com/user

# Copy passoword to clipboard
$ pass -c example.com/user

# gopass : gopass is a rewrite of the pass password manager in Go with the aim of making it cross-platform and adding additional features.
$ sudo pacman -S gopass

$ gopass
gopass
└── example.com
    └── user
```

---
---

#### Guides

- [Awesome-Shell](https://github.com/alebcay/awesome-shell)
- [Awesome-cli-apps](https://github.com/agarrharr/awesome-cli-apps)
- [Awesome-commandline-apps](https://github.com/herrbischoff/awesome-command-line-apps#readme)
- [Automatic GO Setup](https://github.com/canha/golang-tools-install-script)
- [GVM](https://github.com/moovweb/gvm)

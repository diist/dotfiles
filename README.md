# dotfiles

My dot files and other OSX bootstrap scripts.

## Setting up github.com
Manually install xcode:
```
$ xcode-select --install
```

Set up ssh key:
```
$ mkdir ~/.ssh
$ cd ~/.ssh
$ ssh-keygen -t rsa -b 4096 -C "clement.labbe@gmail.com"
$ mv github.com github.com.pem
```

Copy the following to `~/.ssh/config`:
```
Host github.com
        User clement.labbe@gmail.com
        Hostname github.com
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/github.com.pem
```

Clone the repo:
```
$ mkdir -p ~/code/github.com
$ cd ~/code/github.com
$ git clone git@github.com:diist/dotfiles.git
$ cd dotfiles
```

## Usage
```
$ bin/homebrew.sh
$ bin/brew.sh
$ bin/post-brew.sh
$ bin/links.sh
```

## Manual steps
- iTerm2
  - Preferences > General > Preferences > Load preferences from a custom folder
- vscode
  - Extensions > Settings Sync#!/bin/bash

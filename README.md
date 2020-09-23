# dotfiles

My dot files and other OSX bootstrap scripts.

## Setting up github.com
Manually install xcode:
```
$ xcode-select --install
```

Set up ssh key:
```
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa -b 4097 -C "clement.labbe@gmail.com" # path: github.com
mv github.com github.com.pem
```

Add `github.com.pub` as a new SSH [here](https://github.com/settings/keys),
then write the ssh config file:
```
cat <<EOF > ~/.ssh/config
Host github.com
    User clement.labbe@gmail.com
    Hostname github.com
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/github.com.pem
EOF
```

Clone the repo:
```
cd ~
git clone git@github.com:diist/dotfiles.git
cd dotfiles

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
  - Extensions > Settings Sync


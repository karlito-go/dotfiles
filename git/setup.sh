#!/bin/sh

# options
git config --global color.ui true
git config --global core.whitespace -trailing-space
git config --global push.default simple


# aliases
git config --global alias.l 'log --graph --decorate --oneline'
# dont use --all because that shows stash
git config --global alias.la 'log --graph --decorate --oneline --branches --remotes --tags'
git config --global alias.lf "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset'"
git config --global alias.lff 'log --pretty=fuller'

git config --global alias.b 'branch -v'
git config --global alias.st 'status -sb'
git config --global alias.co 'checkout'

git config --global alias.ff 'pull --ff-only'
git config --global alias.pr 'pull --rebase'

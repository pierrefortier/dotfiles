# My dotfiles

This repo contains the dotfiles and config for my system. 

##  Requirements

### Stow

```
brew install stow
```

This folder must live in the `$HOME` directory. Pull it down and then run
`stow .` inside it. Stow will then create symlinks to everything in the folder.

## Extra Steps

When starting from scratch, there are a few things that need sorted. First, you
need to set zsh as your shell. For vim, you need to install Packer and then 
source the packer.lua file, and then run :PackerInstall. For tmux, you need to
install tpm and run tmux source `~/.config/tmux/tmux.conf`.


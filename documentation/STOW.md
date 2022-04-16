### INSTRUCTIONS STOW

``` bash
# ADD CONFIG TO SOURCE PATH

echo "source $HOME/.config/zshrc" >> ~/.zshrc # ADD TO ~/.ZSHRC

# HOW TO USE STOW FRON THIS REPO 
#> https://alexpearce.me/2016/02/managing-dotfiles-with-stow/

# 1. INSTALLATION
sudo apt install stow 
brew install stow

# 2. LINK FILES 
cd ~
ln -s ~/environment-dotfiles/{mydotfile} {.mydotfile}
ls -la | grep {mydotfile}

# 3. CHECK TREE STRUCTURE 
#  $ TREE -A ~/ENVIRONMENT-DOTFILES
#  .
#  └── NEOVIM
#          └── .CONFIG/NVIM
#          └── .INIT.VIM
#      └── .VIMRC
 
# 4. STOW THE FILE YOU WANT TO STOW
# "WITH STOW YOU CAN LINK THOSE FILES BY SIMPLY RUNNING ONE COMMAND"

cd ~/dotfiles

# EXAMPLE
stow neovim 
```

### MORE ON STOW

You will need `git` and GNU `stow`
Clone into your `$HOME` directory or `~`

```bash
git clone https://github.com/ChristianChiarulli/Machfiles.git ~
Run `stow` to symlink everything or just select what you want
stow */ # EVERYTHING (THE '/' IGNORES THE README)
stow zsh # JUST MY ZSH CONFIG
```

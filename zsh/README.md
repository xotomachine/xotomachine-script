## INSTALL PRESETS 10K 
```shell
wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh || true # ZSH INSTALLATION
```

## INSTALL ZSH ITEMS 
```shell
# ZSH THEME
ZSH_PLUGINS=$ZSH_CUSTOM/plugins # set PLUGINS VARS  
ZSH_THEMES=$ZSH_CUSTOM/themes # set THEMES VARS  
git clone --single-branch --branch '0.7.1' --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_PLUGINS/zsh-syntax-highlighting # HIGHLIGHTING  
git clone --single-branch --branch 'v0.6.4' --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_PLUGINS/zsh-autosuggestions # AUTOSUGGESTIONS  
git clone https://github.com/zsh-users/zsh-history-substring-search $ZSH_PLUGINS/zsh-history-substring-search # SEARCH  
git clone https://github.com/jimeh/zsh-peco-history.git $ZSH_PLUGINS/zsh-peco-history # HISTORY  
git clone --single-branch --depth 1 https://github.com/romkatv/powerlevel10k.git $ZSH_THEMES/powerlevel10k # POWERLEVEL10K  
```

## INSTALL ANTIGEN 

```bash 
# INSTALLING ANTIGEN
sudo curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/bin/antigen.zsh > $HOME/antigen.zsh
```

## INSTALL AUTOJUMP 

```bash 
git clone git://github.com/wting/autojump.git
autojump/install.py
```

## INSTALL EXA 

```bash 
brew install exa
```
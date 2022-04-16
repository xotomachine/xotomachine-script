##################
#   _______| |__
#  |_  / __|  _ \
#   / /\__ \ | | |
#  /___|___/_| |_|
##################

###############
# ZSH FUNCTIONS
###############

source "$HOME/.config/zsh/config/zsh-functions.sh" # ZSH-FUNCTIONS

#############
# ENVIRONMENT
#############

# export ZDOTDIR=$HOME/.config/zsh # DOT FILE DIR
export PATH=$HOME/bin:/usr/local/bin:$PATH # LOCAL
export PATH=/bin:/usr/bin:$PATH # USR
export ZSH=$HOME/.oh-my-zsh # Path oh-my-zsh installation

##########
# ZSH INIT
##########

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc. Initialization code that may require console input (password prompts, [y/n] confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

##########
# AUTOJUMP
##########

[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh

##########
# AUTOLOAD
##########

# FIX FOR DOCKER PLUGIN
autoload -Uz compinit && compinit

######################
# ZSH PLUGINS SETTINGS
######################

source $ZSH/oh-my-zsh.sh

plugins=(
  colored-man-pages
  colorize
  command-not-found
  cp
  copydir
  copyfile
  dirhistory
  extract
  zsh-history-substring-search
  globalias
  zsh-autosuggestions
  zsh-interactive-cd
  zsh-navigation-tools
  zsh-peco-history
  zsh-syntax-highlighting
)

source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
source $ZSH_CUSTOM/plugins/zsh-history-substring-search
source $ZSH_CUSTOM/plugins/zsh-peco-history

ZSH_PECO_HISTORY_OPTS="--layout=bottom-up --initial-filter=Fuzzy"

zstyle ':omz:update' mode auto # ZSH UPDATE

#########
# ANTIGEN
#########

source "$HOME/antigen.zsh" # ANTIGEN

# IN CASE OF TROULE 
antigen init $HOME/.config/zsh/.antigenrc # LOAD ANTIGEN
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=cyan,bold,underline"

####################
# 10K THEME SETTINGS
####################

# PLUGINS
[ -f $HOME/.asdf/asdf.sh ] && . $HOME/.asdf/asdf.sh
[ -f $HOME/.asdf/completions/asdf.bash ] && . $HOME/.asdf/completions/asdf.bash
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# SOURCE
[[ ! -f $HOME/.config/.p10k.zsh ]] || source $HOME/.config/.p10k.zsh

#####################
# BASIC UNIX SETTINGS
#####################

# source "$HOME/.config/zsh/config/setopts.sh" # SETOPTS
source "$HOME/.config/zsh/config/history.sh" # HISTORY
source "$HOME/.config/zsh/config/bindkeys.sh" # BINDKEYS
source "$HOME/.config/zsh/config/main-alias.sh" # MAIN ALIASES
source <(cat $HOME/.config/zsh/config/bashcom/list/*) # BASHCOM ALIASES
source <(cat $HOME/.config/zsh/config/bashcom/ba_aliases.sh) # BA_ALIASES
source "$HOME/.config/zsh/config/ssh.sh" # SSH
source "$HOME/.config/zsh/config/exports.sh" # EXPORTS
source "$HOME/.config/zsh/config/environments.sh" # ENVIRONMENTS
source "$HOME/.config/zsh/config/completions.sh" # COMPLETIONS

######
# BREW
######

eval "$(/usr/local/Homebrew/bin/brew shellenv)"

######
# SSH
######

# eval "$(ssh-agent)"
# eval $(ssh-agent -s) >/dev/null 2>&1
# ssh-add -K ~/.ssh/id_rsa_{NAME} >/dev/null 2>&1

##########
# TMUX
##########

# tmux source-file ~/.config/.tmux.conf 
tmux -f ~/.config/.tmux.conf 2> /dev/null

# tmux start-server \; source-file ~/.config/.tmux.conf 2> /dev/null

# session_name="xoto"
# tmux has-session -t=$session_name 2> /dev/null

# if [[ $? -ne 0 ]]; then
#   TMUX='' tmux new-session -d -s "$session_name"
# fi

# if [[ -z "$TMUX" ]]; then
#   tmux attach -t "$session_name"
# else
#   tmux switch-client -t "$session_name"
# fi

##############
# JAVA SDK MAN
##############

# source "$HOME/.sdkman/bin/sdkman-init.sh"
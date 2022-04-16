######################################################
################### << BINDKEY >> ####################
######################################################

bindkey "^X\x7f" backward-kill-line
bindkey '^ ' autosuggest-accept
bindkey -e                                # emacs keybindings
bindkey '\e[1;5C' forward-word            # c-right
bindkey '\e[1;5D' backward-word           # c-left
bindkey '\e[2~'   overwrite-mode          # insert
bindkey '\e[3~'   delete-char             # del
bindkey '\e[5~'   history-search-backward # pgup
bindkey '\e[6~'   history-search-forward  # pgdn
bindkey '^A'      beginning-of-line       # home
bindkey '^D'      delete-char             # del
bindkey '^E'      end-of-line             # end
bindkey '^R'      history-incremental-pattern-search-backward

# HISTORY BINDKEY
# bindkey '^[[B' history-substring-search-down
# bindkey '^[[A' history-substring-search-up

# AUTOSUGGEST BINDKEY
# bindkey '⇧⌥␢' autosuggest-accept
# bindkey '⇧⇥' autosuggest-accept
# bindkey '⌥ ' autosuggest-accept
# bindkey '^[3;5~' delete-char
# bindkey '^[[3~' delete-char

# AUTOSUGGEST BINDKEYS
# bindkey '^ ' autosuggest-accept
# bindkey "^X\x7f" backward-kill-line

############################################################
###### PROMPT AUTOSUGGEST, BINKEYS AND COMPLETIONS #########
############################################################

# DOTFILE SET OPT - COMPLETIONS OPTIONS

setopt auto_cd                    # cd by typing directory name if it's not a command
setopt noautolist                 # automatically list choices on ambiguous completion
setopt auto_menu                  # automatically use menu completion
setopt correct_all                # autocorrect commands
setopt correct                    # autocorrect some
setopt always_to_end              # move cursor to end if word had one match
setopt interactive_comments       # allow comments in interactive shellz
unsetopt bgnice autoparamslash    # unset autoparamslash
setopt path_dirs                  # Perform path search even on command names with slashes.
setopt auto_list                  # Automatically list choices on ambiguous completion.
setopt auto_param_slash           # If completed parameter is a directory, add a trailing slash.
setopt extended_glob              # Needed for file modification glob modifiers with compinit
unsetopt menu_complete            # Do not autoselect the first completion entry.
setopt hash_list_all              # hash everything before completion
setopt complete_in_word           # allow completion from within a word/phrase
setopt no_flow_control
setopt list_ambiguous             # complete as much of a completion until it gets ambiguous.
unsetopt rm_star_silent           # ask for confirmation for `rm *' or `rm path/*'
setopt auto_param_keys
setopt auto_pushd
setopt equals
setopt list_packed
setopt list_types
setopt mark_dirs
setopt magic_equal_subst
setopt no_hup
setopt noautoremoveslash
setopt nolistbeep
setopt prompt_subst
setopt auto_remove_slash

# some useful options (man zshoptions)
# setopt autocd extendedglob nomatch menucomplete
# setopt interactive_comments
# stty stop undef		# Disable ctrl-s to freeze terminal.
# zle_highlight=('paste:none')

######################################################
########### << PROMPT END - REFFERENCES >> ###########
######################################################

# REFFERENCES
# HTML ENTITY     GLYPH  NAME
# &#63743;              Apple
# &#8984;         ⌘      Command, Cmd, Clover, (formerly) Apple
# &#8963;         ⌃      Control, Ctl, Ctrl
# &#8997;         ⌥      Option, Opt, (Windows) Alt
# &#8679;         ⇧      Shift
# &#8682;         ⇪      Caps lock
# &#9167;         ⏏      Eject
# &#8617;         ↩      Return, Carriage Return
# &#8629; &crarr; ↵      Return, Carriage Return
# &#9166;         ⏎      Return, Carriage Return
# &#8996;         ⌤      Enter
# &#9003;         ⌫      Delete, Backspace
# &#8998;         ⌦      Forward Delete
# &#9099;         ⎋      Escape, Esc
# &#8594; &rarr;  →      Right arrow
# &#8592; &larr;  ←      Left arrow
# &#8593; &uarr;  ↑      Up arrow
# &#8595; &darr;  ↓      Down arrow
# &#8670;         ⇞      Page Up, PgUp
# &#8671;         ⇟      Page Down, PgDn
# &#8598;         ↖      Home
# &#8600;         ↘      End
# &#8999;         ⌧      Clear
# &#8677;         ⇥      Tab, Tab Right, Horizontal Tab
# &#8676;         ⇤      Shift Tab, Tab Left, Back-tab
# &#9250;         ␢      Space, Blank
# &#9251;         **␣**  Space, Blank

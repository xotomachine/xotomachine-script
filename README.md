<h1 align="center">Welcome to XotoMachine Dot Files! 👋</h1>

### TABLE OF CONTENTS

- [TABLE OF CONTENTS](#table-of-contents)
- [DIRECTORY](#directory)
- [INSTRUCTIONS NIM](#instructions-nim)
- [GIT SUBMODULES CHEATSHEET](#git-submodules-cheatsheet)

### DIRECTORY

- [INSTRUCTIONS STOW](./documentation/STOW.md)
- [INSTRUCTIONS NVIM](./nvim/README.md)
- [INSTRUCTIONS ZSH](./zsh/README.md)

### INSTRUCTIONS NIM

```shell
# BACKUP 
mv ~/.config ~/.config-BK
# CLONE
git clone --recurse-submodules https://github.com/xotomachine/xotomachine-dotfiles.git ~/.config > /dev/null
# TMP
git clone https://github.com/tmux-plugins/tpm ~/.config/.tmux/plugins/tpm
# NORD
git clone https://github.com/tmux-plugins/tmux-sensible ~/.config/.tmux/plugins
```

<hr>

### GIT SUBMODULES CHEATSHEET
```
# HOW TO CREATE A SUBMODULE ?
git submodule add git@github.com:my_account/my_submodule.git path_to_my_submodule 

# INITALIZING THE LOCAL GIT CONFIGURATION WITH THE SUBMODULES LIST
git submodule init 

# UPDATE YOUR SUBMODULES (LAST VERSION)
git submodule update --remote 

# UPDATE AND INITIALIZE IF THE SUBMODULE IS NOT INITIALIZED.
# (1) INITIALIZE THE GIT CONFIGURATION WITH THE SUBMODULES LIST RETRIEVED FROM THE .GITMODULE FILE
# (2) CLONE THE SUBMODULE REPOSITORY
git submodule update --init

# IF YOU HAVE A SUBMODULE WITHIN A SUBMODULE, YOU WILL WANT TO USE
git submodule update --init --recursive 
```
# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

## Aliases ##

# System -> arch linux
alias pacman="sudo pacman"
alias install="yay -S"
alias uninstall="yay -R"
alias update="sudo pacman -Syyu"
alias upgrade="yay -Syyu"

# ls to exa
alias ls="exa -al --color=always --group-directories-first"
alias la="exa -a --color=always --group-directories-first"
alias ll="exa -l --color=always --group-directories-first"

# Swallow
alias gparted="swallow sudo gparted"
alias play="swallow mpv"
alias view="swallow feh"

# Extras
alias free="free -m"
alias grep="grep --color=auto"        

# Confirmation  
alias mv="mv -iv"
alias rm="rm -iv"

# Exports  
export PATH
export CLICOLOR=1
export TERM=xterm-256color
export LC_ALL=en_US.UTF-8    
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export LANG=en_US.UTF-8
export HISTCONTROL=ignoreboth

# Ricing
colorscript -r

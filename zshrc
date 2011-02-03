# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="eastwood"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# fix names in rvm
unsetopt auto_name_dirs

# fix delete key
bindkey  "^[[3~"          delete-char
bindkey  "^[3;5~"         delete-char

# fix home and end keys
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

# see: https://wiki.archlinux.org/index.php/Why_don't_my_Home_and_End_keys_work_in_terminals%3F

# source rvm 
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


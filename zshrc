# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kennethreitz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gti="git"
alias rmigrate="./bin/rake db:migrate RAILS_ENV=test"
alias migrate="bundle exec rake db:migrate"
alias treset='RAILS_ENV=test bundle exec rake db:reset'
alias rtags="ripper-tags -R --exclude=vendor"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(forklift gitfast git-remote-branch history rails rake z zeus emoji-clock)

source $ZSH/oh-my-zsh.sh

export LC_CTYPE="en_US.UTF-8"

# Customize to your needs...
export PATH=$HOME/.rbenv/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

eval "$(rbenv init -)"

# Add ./bin to the front of the path (before the rbenv shims)
export PATH="./bin:/usr/local/bin:$PATH"


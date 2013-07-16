if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE=true
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export EDITOR="subl -w"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=$HOME/bin:/usr/local/share/python:/usr/local/bin:$HOME/.rbenv/bin:/Applications:$PATH
# Aliases for tmux
alias tmus='tmux'
alias tm='tmux'
alias tx='tmux'
# Aliases for git
alias gh='git hist'
alias gs='git s'
alias ga='git add '
alias gb='git br'
alias gba='git br -a'
alias gbr='git br -r'
alias gc='git commit'
alias gca='git ci -a'
alias gd='git diff'
alias go='git checkout'
alias gob='git checkout -b'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gk='gitk --all&'
alias gx='gitx --all'
alias got='git '
alias get='git '
alias gpr='git pr'
alias mb='gbr | grep andres | sed -e "s@origin/@@"'
alias gbu='gbr | sed -e "s@origin/@@" | grep -v grep | grep $@'
#Aliases for bundler
alias b="bundle"
alias bi="b install --path vendor"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"
#Aliases for sublime
alias pc="open $HOME/Library/Application\ Support/Sublime\ Text\ 2/Packages"

export JAVA_HOME=$(/usr/libexec/java_home)

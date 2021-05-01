export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

# ZSH Built-in plugins
plugins=(
  git
  docker
  vi-mode # I need vim everywhere 🤷
)


source $ZSH/oh-my-zsh.sh

# ZSH 3rd party plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/opt/fzf/shell/key-bindings.zsh
source /usr/local/opt/fzf/shell/completion.zsh

# Some tweaks to some of the plugins

bindkey '  ' autosuggest-accept

# Enable nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# Aliases, AKA: expressing my lazyness

alias go="git checkout"
alias gs="git status"
alias gws="git wf start"
alias gwd="git wf done"
alias gwp="git wf pr"
alias gwa="git wf abort"
alias gpf="git push fork"
alias gob="git checkout -b"
alias gu="git up"
alias nu="nvm use"
alias ns="npm start"
alias ni="npm ci"
alias nt="npm t"
alias nr="npm run"
alias ng="npm init @grpn"
alias b="brew"
alias bi="brew install"
alias k="kubectl"
alias kx="kubectx"
alias v="nvim"
alias tma="tmux attach"
alias n="node"
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
alias hh="history | fzf"
alias z="v ~/.zshrc"
alias ncf="npx nap --cloud deploy:configs"
alias s="source ~/.zshrc"

# Enable a ruby version from rbenv
export PATH="$HOME/.rbenv/bin:$PATH"

# Enable rust
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(rbenv init -)"

if (( $+commands[thefuck] )) ; then

eval $(thefuck --alias f)
else
  echo "did not find thefuck ?"
fi

# Setting a better jdk
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Godly overrides from my home

export PATH="$HOME/.bin:$PATH"

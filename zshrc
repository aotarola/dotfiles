export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

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

# Tweaking plugins

bindkey '  ' autosuggest-accept

# Aliases, AKA: expressing my laziness

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
alias ncf="npx nap --cloud deploy:configs"
alias s="source ~/.zshrc"
alias t="v ~/.tmux.conf"
alias z="v ~/.zshrc"
alias a="v ~/.alacritty.yml"

# PATH customization

export PATH="$HOME/.pyenv/bin:$PATH" # enable pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="$HOME/.rbenv/bin:$PATH" # enable rbenv
eval "$(rbenv init -)"

export PATH="$HOME/.cargo/bin:$PATH" # enable rust

export PATH="/usr/local/opt/openjdk/bin:$PATH" # setting a better jdk

export PATH="$HOME/.bin:$PATH" # godly overrides from my home

# Configure thefuck

if (( $+commands[thefuck] )) ; then

eval $(thefuck --alias f) # enables the polite form: 'f'
else
  echo "did not find thefuck ?"
fi

# Configure nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

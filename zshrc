export ZSH="$HOME/.oh-my-zsh"

fpath+=$HOME/.zsh/pure
ZSH_THEME=""

autoload -U promptinit; promptinit
prompt pure

# ZSH Built-in plugins
plugins=(
  git
  docker
  vi-mode # I need vim everywhere 🤷
)

source $ZSH/oh-my-zsh.sh

# ZSH 3rd party plugins
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/opt/fzf/shell/key-bindings.zsh
source /usr/local/opt/fzf/shell/completion.zsh

# Tweaking plugins

# bindkey '  ' autosuggest-accept

# Aliases, AKA: expressing my laziness

alias gco="git checkout"
alias gs="git status"
alias gws="git wf start"
alias gwd="git wf done"
alias gwp="git wf pr"
alias gwa="git wf abort"
alias gpf="git push fork"
alias gob="git checkout -b"
alias gu="git up"
alias nu="fnm use"
alias ns="npm start"
alias nci="npm ci"
alias nt="npm t"
alias nr="npm run"
alias na="npm run assets"
alias ng="npm init @grpn"
alias b="brew"
alias bi="brew install"
alias k="kubectl"
alias kx="kubectx"
alias ks="kubens"
alias v="lvim"
alias n="node"
alias oldvim="vim"
alias ta="tmux attach"
alias hh="history | fzf"
alias ncf="npx nap --cloud deploy:configs"
alias vim="v"
alias vi="v"
alias h="hx"
alias hg="hx"
alias s="source ~/.zshrc"
alias t="v ~/.tmux.conf"
alias z="v ~/.zshrc"
alias a="v ~/.alacritty.yml"
alias nig="npm init @grpn"
alias remove_lvim="rm -rf ~/.config/lvim/plugin && rm -rf ~/.local/share/lunarvim && rm -rf ~/.cache/nvim"
alias pack_plugins="$HOME/.local/share/nvim/site/pack/packer/opt"
alias drun="docker run --rm -it"
alias cod="conda deactivate"
alias coa="conda activate"
alias ccat="pygmentize -g"
alias npv="node -v && npm -v"
# Export env vars
eval "$(fnm env)"

# PATH customization

export PATH="$HOME/.cargo/bin:$PATH" # enable rust

export PATH="/usr/local/opt/openjdk/bin:$PATH" # setting a better jdk

export PATH="$(pyenv root)/shims:/usr/local/bin:/usr/bin:/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH" # godly overrides from my home

eval "$(rbenv init - zsh)"

# . /usr/local/opt/asdf/libexec/asdf.sh
export PATH="/usr/local/sbin:$PATH"

export ZSH="$HOME/.oh-my-zsh"

export PATH="/opt/homebrew/bin:$PATH" # homebrew override

export PATH="$(brew --prefix)/opt/openjdk/bin:$PATH" # setting a better jdk

export PATH="$HOME/.cargo/bin:$PATH" # enable rust

export PATH="$HOME/.local/bin:$PATH" # godly overrides from my home

export PATH="/usr/local/sbin:$PATH"

export PATH="$(brew --prefix)/sbin:$PATH"

export PATH="$HOME/dev/grain/node_modules/.bin:$PATH"

export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

. $(brew --prefix)/opt/asdf/libexec/asdf.sh

fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit

ZSH_THEME=""

prompt pure

# ZSH Built-in plugins
plugins=(
  #git
  #docker
  vi-mode # I need vim everywhere 🤷
)

source $ZSH/oh-my-zsh.sh


# ZSH 3rd party plugins
source /opt/homebrew/opt/fzf/shell/key-bindings.zsh
source /opt/homebrew/opt/fzf/shell/completion.zsh

# Tweaking plugins

# bindkey '  ' autosuggest-accept

# Aliases, AKA: expressing my laziness

alias gd="git dft"
alias ga="git add ."
alias gca="git commit -v -a"
alias gc="git commit"
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
alias nd="npm run dev"
alias nci="npm ci"
alias nt="npm t"
alias nr="npm run"
alias na="npm run assets"
alias ng="npm init @grpn"
alias bi="brew install"
alias kx="kubectx"
alias ks="kubens"
alias b="brew"
alias k="kubectl"
alias v="lvim"
alias h="hx"
alias hc="hx ~/.config/helix"
alias c="cargo"
alias n="node"
alias oldvim="vim"
alias ta="tmux attach"
alias hh="history | fzf"
alias ncf="npx nap --cloud deploy:configs"
alias vim="v"
alias vi="v"
alias s="source ~/.zshrc"
alias t="h ~/.tmux.conf"
alias z="h ~/.zshrc"
alias a="h ~/.alacritty.yml"
alias remove_lvim="rm -rf ~/.config/lvim/plugin && rm -rf ~/.local/share/lunarvim && rm -rf ~/.cache/nvim"
alias pack_plugins="$HOME/.local/share/nvim/site/pack/packer/opt"
alias drun="docker run --rm -it"
alias cod="conda deactivate"
alias coa="conda activate"
alias ccat="pygmentize -g"
alias npv="node -v && npm -v"
alias m="mutagen"
alias llive="lamdera live"

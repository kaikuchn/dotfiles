function may_source() {
  arg=${1:?'Must provide file to source'}
  test -e "${arg}" && source "${arg}"
}

test -e /opt/homebrew/bin/brew && eval "$(/opt/homebrew/bin/brew shellenv)"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify

# Set keymap to vi emulation
bindkey -v

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi
# The following lines were added by compinstall
# zstyle :compinstall filename "$HOME/.zshrc"

# Setup pure https://github.com/sindresorhus/pure
FPATH="$HOME/.zfunctions:$FPATH"
autoload -U promptinit; promptinit
prompt pure

# load env variables
source ~/.zshenv

# setup ruby
if which rbenv > /dev/null; then
  export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
  eval "$(rbenv init -)"
fi

# setup asdf for erlang, elixir, node
if which asdf > /dev/null; then
  source $(brew --prefix asdf)/libexec/asdf.sh
fi

# load aliases
source ~/.aliases

if type brew &>/dev/null; then
  # activate syntax highlighting
  may_source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  # activate custom zsh completions
  may_source "$(brew --prefix)/share/zsh/site-functions"
  # System clipboard key bindings for Zsh Line Editor with vi mode
  may_source "$(brew --prefix)/share/zsh-system-clipboard/zsh-system-clipboard.zsh"
  # ZSH port of Fish history search
  may_source "$(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh"
fi

# configure ZSH port of Fish history search
if which history-substring-search-up > /dev/null; then
  bindkey '^[[A' history-substring-search-up
  bindkey '^[[B' history-substring-search-down
fi
may_source "${HOME}/.iterm2_shell_integration.zsh"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/kaikuchn/Library/Caches/heroku/autocomplete/zsh_setup && may_source $HEROKU_AC_ZSH_SETUP_PATH;

test -e /usr/local/bin/terraform && complete -o nospace -C /usr/local/bin/terraform terraform

may_source $HOME/.config/op/plugins.sh

# fix run-help setup to provide help on shell builtins, e.g. run-help bindkey
unalias run-help 2>/dev/null
autoload -U run-help

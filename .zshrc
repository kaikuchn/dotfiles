# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Setup pure https://github.com/sindresorhus/pure
fpath=( "$HOME/.zfunctions" $fpath )
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

# activate syntax highlighting
test -e /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
test -e /usr/local/share/zsh/site-functions && source /usr/local/share/zsh/site-functions

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/kaikuchn/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

test -e /usr/local/bin/terraform && complete -o nospace -C /usr/local/bin/terraform terraform

test -e /opt/homebrew/bin/brew && eval "$(/opt/homebrew/bin/brew shellenv)"
test -e $HOME/.config/op/plugins.sh && source $HOME/.config/op/plugins.sh

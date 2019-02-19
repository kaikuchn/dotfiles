# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/kaikuchn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit && promptinit
prompt pure

# setup gcloud sdk
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# setup ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# setup python
export PATH="$HOME/.pyenv/shims:$PATH"
eval "$(pyenv init -)"

# setup elixir
if which exenv > /dev/null; then eval "$(exenv init -)"; fi

# load aliases
source ~/.aliases

source ~/.zshenv

# activate syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh/site-functions

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/kaikuchn/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

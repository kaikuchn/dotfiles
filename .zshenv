# golang setup
# export GOROOT=/usr/local/opt/go/libexec/
# export PATH="${PATH}:${GOROOT}bin"
# export GOPATH="$HOME/.gofuckyourself"

# general settings
export PATH="/usr/local/sbin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export EDITOR="vi"
export ALTERNATE_EDITOR=""
export VISUAL="emacsclient -nqc --frame-parameters='((fullscreen . maximized))'"

# pass configuration
if which pass > /dev/null; then
  export PASSWORD_STORE_ENABLE_EXTENSIONS=true
  export PASSWORD_STORE_EXTENSIONS_DIR=/usr/local/lib/password-store/extensions
fi

# use homebrew's curl
export PATH="/usr/local/opt/curl/bin:$PATH"

# ruby path wrangling
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

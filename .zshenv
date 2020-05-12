# golang setup
export GOROOT=/usr/local/opt/go/libexec/
export PATH="${PATH}:${GOROOT}bin"
export GOPATH="$HOME/.gofuckyourself"

# general settings
export PATH="/usr/local/sbin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export EDITOR="vi"
export ALTERNATE_EDITOR=""
export VISUAL="emacsclient -nqc --frame-parameters='((fullscreen . maximized))'"
export PATH="/usr/local/opt/qt/bin:$PATH"

# pass stuff
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
export PASSWORD_STORE_EXTENSIONS_DIR=/usr/local/lib/password-store/extensions

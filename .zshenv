# general settings
export PATH="/usr/local/sbin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export EDITOR="vi"
export ALTERNATE_EDITOR=""

# pass configuration
if which pass > /dev/null; then
  export PASSWORD_STORE_ENABLE_EXTENSIONS=true
  export PASSWORD_STORE_EXTENSIONS_DIR=/usr/local/lib/password-store/extensions
fi

# ruby path wrangling
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# enable docker build-kit
export DOCKER_BUILDKIT=1
export DOCKER_HOST="unix://$HOME/.colima/default/docker.sock"

# enable elixir/erlang shell history
export ERL_AFLAGS="-kernel shell_history enabled"

# Config for mob.sh
export MOB_TIMER=15

export PG_USER=postgres

# Use 1Password as SSH Agent
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# include subl executable in path
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# give preference to local binaries
export PATH="./bin:$PATH"

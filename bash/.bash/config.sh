# Set up autojump. Aliased as `j`.
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Show colors when navigating in shell
export CLICOLOR=1

# Add executables to the path variable, so shell can find them. Type `set` to review all env vars.
export PATH="/Users/bex/Android/platform-tools:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="$PATH:`yarn global bin`"
export GOPATH=/Users/bex/Projects/go

# Set up nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set up hub and alias git to use hub (https://hub.github.com/)
[ -e "$(which hub)" ] && eval "$(hub alias -s)"

# Set up ssh
[ -e $HOME/.ssh/rsa_id ] && export SSH_KEY_PATH="$HOME/.ssh/rsa_id"

# Set up bash tab completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

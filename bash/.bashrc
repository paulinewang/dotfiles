[ -e $HOME/.bashrc.local ] && source $HOME/.bashrc.local
source $HOME/.bash/prompt.sh
source $HOME/.bash/config.sh
source $HOME/.bash/aliases.sh
source $HOME/.bash/usabilla.sh
source $HOME/.bash/wetransfer.sh
source $HOME/.bash/serve.sh
source $HOME/.bash/git-completion.bash

export NVM_DIR="$HOME/.nvm"
export WT_PLATFORM_USER='paulinewang'
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

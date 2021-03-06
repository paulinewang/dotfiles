# Files
alias ls="ls -G"
alias l='ls -lAhG'
alias rm='rm -vir'
alias cp='cp -vi'
alias mv='mv -vi'
alias mkdir="mkdir -pv"
alias tree="tree -C -L 4 -I node_modules"
alias diff="colordiff -y"
function cdls() { 
    cd "$@" && ls; 
}

# Shell
alias reshell="source ~/.bashrc"
alias restow="~/stow-all && source ~/.bashrc"

# Navigation
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# Yarn
function yw() {
    yarn run jest --watch --testPathPattern=$1
}

# Git
alias g="git"
alias gs="git status"
alias ga="git add . -v"
alias gpyolo="git push --force-with-lease"
alias gstash="git stash -u"
function gryolo() {
    git fetch
    git reset --hard origin/master
    git clean -f -d
}
function gp() {
    git commit -m "$1"
    git push
    gpr
}
function gc() {
    git checkout -b $1
    git push --set-upstream origin $1
}
function gpr() {
  to_branch=$1
  if [ -z $to_branch ]; then
    to_branch="master"
  fi
  
  origin=$(git config --get remote.origin.url)
  user=$(echo $origin | sed -e 's/.*[\/:]\([^/]*\)\/[^/]*$/\1/')
  repo=$(basename `git rev-parse --show-toplevel`)
  from_branch=$(git rev-parse --abbrev-ref HEAD)

  open "https://github.com/$user/$repo/compare/$to_branch...$from_branch?expand=1"
}

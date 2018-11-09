echo "Custom bash aliases loaded."

# Docker aliases
alias drmi='docker rmi -f $(docker images -q -a)'
alias drmc='docker rm -f $(docker ps -a -q)'
alias drmv='docker volume rm $(docker volume ls -q -f dangling=true)'
alias dstats='docker stats $(docker ps --format={{.Names}})'
alias dstop='docker stop $(docker ps -a -q)'
alias dreset='docker_stop;docker_rmc;docker_rmi;docker_rmv;'
alias dclear="docker stop \$(docker ps -aq); docker rm \$(docker ps -aq)"
function dsql {
  docker exec -it $1 mysql -uroot -padmin
}

function dbash {
  docker exec -it $1 bash
}

function devown {
  sudo chown developer $1; sudo chgrp developer $1
}

# Navigation aliases
alias dev='cd /home/developer/development'
alias ..='cd ..'
alias ...='cd ../../'

# Github aliases
alias g='git'
alias gs='git status'
alias gd='git diff '
alias gc='git checkout '

alias open='sensible-browser'

git config --global alias.co checkout

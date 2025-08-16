# Git alias autocomplete (https://gist.github.com/mwhite/6887990)
function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /usr/share/bash-completion/completions/git

    for al in $(git config --get-regexp '^alias\.' | cut -f 1 -d ' ' | cut -f 2 -d '.'); do
      alias g$al="git $al"

      complete_func=_git_$(__git_aliased_command ${al})
      function_exists ${complete_fnc} && __git_complete g${al} ${complete_func}
    done

fi

# Git bare repo alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no

# gitignore.io api
function gi() { curl -sL https://www.toptal.com/developers/gitignore/api/$@ ;}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
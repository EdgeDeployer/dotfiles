# Load bashrc (More bash settings)
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias ls="ls -G"

# Autocompletion for git
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
    PS1='[\W$(__git_ps1 " (%s)")]\$ ';
fi

export PATH=/usr/local/bin:$PATH

# Expand Bash History
HISTFILESIZE=1000000000
HISTSIZE=1000000

git() { command hub "$@"; if [[ "$1" == *checkout* ]] || [[ "$1" == *co* ]]; then cd .; fi }

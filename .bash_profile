source /etc/bashrc
source ~/.bash/aliases

# Include Drush bash customizations.
if [ -f "~/.drush/drush.bashrc" ] ; then
  source ~/.drush/drush.bashrc
fi

# Include Drush completion.
if [ -f "~/.drush/drush.complete.sh" ] ; then
  source ~/.drush/drush.complete.sh
fi

# Include Drush prompt customizations.
if [ -f "~/.drush/drush.prompt.sh" ] ; then
  source ~/.drush/drush.prompt.sh
fi

# Set putty's title bar before setting PS1
USER=$(/usr/bin/id -un)
HOSTNAME=$(uname -n)
echo -n -e '\033]0;xyz \007'

# User specific environment and startup programs
shopt -q -s cdspell
#unset USERNAME
export EDITOR=/usr/bin/vim
export GREP_OPTIONS='--color=auto'
HISTFILESIZE=10000
HISTSIZE=10000
HISTCONTROL=erasedups
HISTIGNORE=" *:^[a-z]*$:guard:rm "
#set encoding=utf-8
LANG="en_US.utf8"

PS1="\n\[\e[32m\]\$ \u@\H [\w] \n\$\[\e[0m\] "

# Tidy dotfiles
BZR_LOG=/dev/null
HISTFILE="$HOME/.bash/history"
LESSHISTFILE="$HOME/.bash/lesshst"


# Load ssh keys in agent
#eval $(keychain --dir "$HOME/.bash/keychain" --eval --agents ssh -Q --quiet id_rsa)

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


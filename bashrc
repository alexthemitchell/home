source $HOME/.cargo/env
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac
set -o vi
# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "(${BRANCH})"
	else
		echo ""
	fi
}

TIME_COLOR=5
DIRECTORY_COLOR=12
BRANCH_COLOR=3

export PS1="\e[38;5;${TIME_COLOR}m[\t] \e[38;5;${DIRECTORY_COLOR}m\w \e[38;5;${BRANCH_COLOR}m\`parse_git_branch\`\e[0m\n\\$ "
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi
alias ls='ls --color=auto'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# enable programmable completion features
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export USER="Alex Mitchell"

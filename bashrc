export SHELL="/bin/bash"
eval "`dircolors`"
alias ls='ls --color=auto'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

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

TIME_COLOR=100
DIRECTORY_COLOR=158
BRANCH_COLOR=198

export PS1="\e[38;5;${TIME_COLOR}m[\t] \e[38;5;${DIRECTORY_COLOR}m\w \e[38;5;${BRANCH_COLOR}m\`parse_git_branch\`\e[0m\n\\$ "

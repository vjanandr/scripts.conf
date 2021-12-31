# Generic $dotdir/bashshrc
# Engineering Services (ES)
#
##
# Things the user might wish to set.
export USER_PATH="~/bin"			# Extra paths.
export EDITOR=vim				# Preferred editor.
#export EDITOR=nvim				# Preferred editor.
export PATH=$PATH:/usr/sbin:$USER_PATH:/usr/local/bin
##
# Should the full environment be set up even for non-interactive shells?
# Probably not but here is a variable to control it.
export FULLENV=false				# 'true' or 'false'
alias ff='~/scripts.conf/scripts/ff'
alias dspace='du -bsh'

##
# Should all paths (even NFS, which might hang) be set up at login?
# The alias "fullpath" is available to setup your full path.  It can
# also be used to change your path by changing USER_PATH above.
export FULLPATH=true				# 'true' or 'false'

###########################################################################
# Everything above this line helps configure the environment.

# This line should not be removed.
dotdir=~/.files; [ -f $dotdir/sys_bashrc ] && . $dotdir/sys_bashrc
[ $FULLENV != "true" ] && [ -z "$PS!" ] && exit


umask 022                        # no write by group or other
export autologout=0              # disable autologout
export FIGNORE=".o"              # don't complete .o files
export HISTFILE=~/.bash_history  # history file
export HISTFILESIZE=500          # history file size
export HISTSIZE=128              # save last 128 commands
#export ignoreeof=10              # disable ^D for logout (up to 10)
#set -C                           # disable redirect overwrite
set -b                           # enable immediate job notify
unset noclobber
unset ignoreeof


###########################################################################
# Everything below this line is run for interactive shells.
# If you wish the full environment even in non-interactive
# shells set FULLENV above to 'true'.
# Colors
Black="$(tput setaf 0)"
BlackBG="$(tput setab 0)"
DarkGrey="$(tput bold ; tput setaf 0)"
LightGrey="$(tput setaf 7)"
LightGreyBG="$(tput setab 7)"
White="$(tput bold ; tput setaf 7)"
Red="$(tput setaf 1)"
RedBG="$(tput setab 1)"
LightRed="$(tput bold ; tput setaf 1)"
Green="$(tput setaf 2)"
GreenBG="$(tput setab 2)"
LightGreen="$(tput bold ; tput setaf 2)"
Brown="$(tput setaf 3)"
BrownBG="$(tput setab 3)"
Yellow="$(tput bold ; tput setaf 3)"
Blue="$(tput setaf 4)"
BlueBG="$(tput setab 4)"
LightBlue="$(tput bold ; tput setaf 4)"
Purple="$(tput setaf 5)"
PurpleBG="$(tput setab 5)"
Pink="$(tput bold ; tput setaf 5)"
Cyan="$(tput setaf 6)"
CyanBG="$(tput setab 6)"
LightCyan="$(tput bold ; tput setaf 6)"
NC="$(tput sgr0)" # No Color
#export PS1="[\u@\h]:\w > "            # shell prompt format
#export PS1="\e[1;34m\u@ \e[0;31m\h: \e[1;32m\w \e[m> "
#export PS1="\[$(tput setaf 1 setab 3)\]\u@\h:\w $ \[$(tput sgr0)\]"
#PS1="\[\`if [[ \$? = "0" ]]; then echo '[\e[32m\u\e[0m@\[$LightBlue\]\h\e[0m]:';
#else echo '[\e[31m\u\e[0m@\[$LightBlue\]\h:\e[0m]' ; fi\`\[$Purple\]\w\e[0m\n\# => "

#PS1="\[\`if [[ \$? = "0" ]]; then echo '[\e[32m\u\e[0m@\[$LightBlue\]\h\e[0m]:'; else echo '[\e[31m\u\e[0m@\[$LightBlue\]\h:\e[0m]' ; fi\`\[$Purple\]\w\e[0m\n\! => "
#PS1="\[\033[1;31m\]\t \[\033[32m\][\h:\w]\[\033[0m\]\n\[\033[1;36m\]\!\[\033[1;33m\] => \[\033[0m\]"

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWSTASHSTATE=true
#export GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_ ${White}\t:${Yellow}$HOSTNAME${Green}[\w]${ResetColor}"

#PS1='\[$(tput sc; rightprompt1; tput rc)\]\[\033[1;31m\]\t \[\033[32m\][$(pwd)]\[\033[0m\]\n\[\033[1;36m\]\[$(tput sc; tput rc)\]\!\[\033[1;35m\]$(__git_ps1)\[\033[1;33m\] => \[\033[0m\]'
#PS1='\t:\033[1;31m\]$HOSTNAME:\[\033[32m\][$(pwd)]\[\033[0m\]\n\[\033[1;36m\]\[$(tput sc; tput rc)\]\!\[\033[1;35m\]$(__git_ps1)\[\033[1;33m\] => \[\033[0m\]'
#PS1='\[\033[1;31m\]\t:\033[1;33m\]$HOSTNAME:\[\033[32m\][$(pwd)]\[\033[0m\]\n\[\033[1;36m\]\[$(tput sc; tput rc)\]\!\[\033[1;35m\]\[\033[1;33m\] => \[\033[0m\]'

#export PS1="\[\033[1;31m\]\t \[\033[32m\][$(pwd)]\[\033[0m\] \n\[\033[1;36m\]\[$(tput sc; tput rc)\]\!\[\033[1;33m\] => \[\033[0m\]"
#export PS1="\[\033[1;31m\]\t \[\033[32m\][$(pwd)]\[\033[0m\] \[\033[1;35m\]\$(git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/') \n\[\033[1;36m\]\[$(tput sc; tput rc)\]\!\[\033[1;33m\] => \[\033[0m\]"
#export PS1="\[\033[1;31m\]\t \[\033[32m\][$(pwd)]\[\033[0m\] \[\033[1;35m\] \$(parse_git_branch) \n\[\033[1;36m\]\[$(tput sc; tput rc)\]\!\[\033[1;33m\] => \[\033[0m\]"
#export PS2="\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "

#export PS1="\[\033[1;31m\]\t $(__git_ps1) \[\033[32m\][$(pwd)]\[\033[0m\] \[\033[1;35m\] \n\[\033[1;36m\]\[$(tput sc; tput rc)\]\!\[\033[1;33m\] => \[\033[0m\]"
#alias ls='ls --color=auto'
export CSCOPE_EDITOR=vim
##
# Source other rc files after this line.
#[ -f ~/.bashrc_LOB ] && . ~/.bashrc_LOB
[ -f ~/.bashrc_BU ] && . ~/.bashrc_BU
[ -f ~/scripts.conf/bashrc_USER ] && . ~/scripts.conf/bashrc_USER
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

export LC_ALL=en_US.UTF-8

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_OPTS='--height=70% --preview="cat {}" --preview-window=right:60%:wrap'
export FZF_DEFAULT_COMMAND='rg --files'

export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'

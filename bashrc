# Generic $dotdir/bashshrc
# Engineering Services (ES)
#
##
# Things the user might wish to set.
export USER_PATH="~/bin"			# Extra paths.
export EDITOR=vim				# Preferred editor.
export PRINTER=lp				# Preferred printer.
export NNTPSERVER=usenet.cisco.com		# Preferred news server.

##
# Should the full environment be set up even for non-interactive shells?
# Probably not but here is a variable to control it.
export FULLENV=false				# 'true' or 'false'

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

function timer_start {
      timer=${timer:-$SECONDS}
}

function timer_stop {
      timer_show=$(($SECONDS - $timer))
            unset timer
}

trap 'timer_start' DEBUG

if [ "$PROMPT_COMMAND" == "" ]; then
  PROMPT_COMMAND="timer_stop"
else
  PROMPT_COMMAND="$PROMPT_COMMAND; timer_stop"
fi

#PS1='\[\033[1;34m\]${timer_show} \[\033[1;31m\]\t \[\033[32m\][\h:$(pwd)]\[\033[0m\]\n\[\033[1;36m\]\!\[\033[1;33m\] => \[\033[0m\]'
#
#rightprompt1()
#{
#    printf "\e[33m%*s \e[m" $COLUMNS "($HOSTNAME)"
#}
#rightprompt2()
#{
#    if [ "$ws" != "" ]; then
#        printf "\e[35m%*s \e[m" $COLUMNS "($ws)"
#    fi
#}

PS1='\[\033[1;31m\]\t \[\033[32m\][$(pwd)]\[\033[0m\]\n\[\033[1;36m\]\[$(tput sc; tput rc)\]\!\[\033[1;33m\] => \[\033[0m\]'

##
# Source other rc files after this line.
#[ -f ~/.bashrc_LOB ] && . ~/.bashrc_LOB
[ -f ~/.bashrc_BU ] && . ~/.bashrc_BU
[ -f ~/.bashrc_USER ] && . ~/.bashrc_USER

export LC_ALL=en_US.UTF-8

source /home/vijayr-ovm/Soft/fastcd/set.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_OPTS='--height=70% --preview="cat {}" --preview-window=right:60%:wrap'
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_CTRL_T_COMMAND='$FZF_DEFAULT_COMMAND'

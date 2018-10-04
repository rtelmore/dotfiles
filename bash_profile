## Git stuff
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [[ ${HOSTNAME} == Ryans* ]] || [[ ${HOSTNAME} == *du.edu ]];
then
 export COMP_NAME="DU-Laptop"
else
 export COMP_NAME="$HOSTNAME"
fi

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
	TITLEBAR='\[\033]0;\u@\h:\w\007\]'
	;;
    *)
    TITLEBAR=""
    ;;
  esac
PS1="${TITLEBAR}\
$BLUE[$RED\u@$COMP_NAME$GREEN\$(parse_git_branch)$BLUE]\
$LIGHT_GREEN\$ "
PS2='> '
PS4='+ '
}
proml
## $BLUE[$RED\u@\h:\w$GREEN\$(parse_git_branch)$BLUE]\
## local   COMP_NAME="${HOSTNAME%%-*}"
## End git stuff

export CLICOLOR=1
alias ls='ls'
alias sl='ls'
alias rm='rm -i'
alias cdr='cd ~/research/'
alias cds='cd ~/research/sports-stats/'
alias cdta='cd ~/talks/'
alias cdte='cd ~/teaching/'
alias lsmore='ls -la | more'
alias myps='ps -u relmore'
alias go2bird='ssh -Y peregrine'
alias myq='showq -u relmore'
alias go2du-hpc='ssh -Y relmore4@nsm-hpc.nsm.du.edu'
alias go2rstudio='ssh -Y ryan.elmore@Rstudio.du.edu'
alias cdic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'

export LSCOLORS="Dxfxcxdxbxegedabagacad"

PATH=$PATH:~/bin

# added by Anaconda3 5.1.0 installer
export PATH="/Users/Ryan/anaconda3/bin:$PATH"

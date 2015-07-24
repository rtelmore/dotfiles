## Git stuff
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#if [ ${HOSTNAME%%.*} = "stc-24795s" ]; then
#  export COMP_NAME="stc-24795s"
#else
#  export COMP_NAME="BIRD-$HOSTNAME"
#fi

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local   COMP_NAME="${HOSTNAME%%-*}"
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
## End git stuff

export CLICOLOR=1
alias ls='ls'
alias sl='ls'
alias rm='rm -i'
alias cdp='cd ~/Projects/'
alias cds='cd ~/Side_Projects/'
alias lsmore='ls -la | more'
alias myps='ps -u relmore'
alias go2bird='ssh -Y peregrine'
alias myq='showq -u relmore'

export LSCOLORS="Dxfxcxdxbxegedabagacad"

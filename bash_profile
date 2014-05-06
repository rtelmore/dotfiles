## Git stuff
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function parse_hg_branch {
  hg branch 2> /dev/null | sed -e 's/.*/(&)/'
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
  local   COMP_NAME="${HOSTNAME%%.*}"
  case $TERM in
    xterm*)
	TITLEBAR='\[\033]0;\u@\h:\w\007\]'
	;;
    *)
    TITLEBAR=""
    ;;
  esac
PS1="${TITLEBAR}\
$BLUE[$RED\u@$COMP_NAME$GREEN\$(parse_git_branch)$GREEN\$(parse_hg_branch)$BLUE]\
$LIGHT_GREEN\$ "
PS2='> '
PS4='+ '
}
proml
## $BLUE[$RED\u@\h:\w$GREEN\$(parse_git_branch)$BLUE]\
## End git stuff

export CLICOLOR=1
alias go2oldldrd='ssh relmore@dmldrd.development.nrel.gov'
alias go2ldrd-compute='ssh -Y relmore@cn00-bde.nrel.gov'
alias go2ldrd-data='ssh relmore@dnpdb001.bigde.nrel.gov'
alias go2nadi='ssh ryan@nadi.dyndns.org'
alias go2bosco='psql83 -p 5432 -h bsm-data.nrel.gov -d bosco'
alias amte='mate'
alias ls='ls -G'
alias sl='ls -G'
alias rm='rm -i'
alias lsmore='ls -la | more'
alias myps='ps -u relmore'
alias go2rock='ssh relmore@redrock-login1.nrel.gov'
alias go2eye1='ssh -Y relmore@redeye-1.nrel.gov'
alias go2eye2='ssh relmore@redeye-2.nrel.gov'
alias go2jump='ssh relmore@redrock-jump1.nrel.gov'
alias go2scc='ssh relmore@sccdev'
alias go2mesa='ssh rtelmor@redmesa-login1.sandia.gov'
alias go2eden='ssh relmore@eden'
alias go2bird-admin='ssh 10.60.1.5'
alias go2bird='ssh -Y peregrine'
alias go2phi1='ssh relmore@phi1.hpc.nrel.gov'
alias go2phi2='ssh relmore@phi2.hpc.nrel.gov'
alias go2power-api='ssh -Y rtelmor@software.sandia.gov'
alias go2peli='ssh relmore@pelican.hpc.nrel.gov'
alias myq='showq -u relmore'

export LSCOLORS="Dxfxcxdxbxegedabagacad"

export SVN_EDITOR='vim'
## Path stuff
#export LD_LIBRARY_PATH=/usr/local/boost_1_44_0/stage/lib:$LD_LIBRARY_PATH
#export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
# MacPorts Installer addition on 2010-05-24_at_15:02:14: adding an appropriate PATH variable for use with MacPorts.
export PATH=/Users/relmore/Side_Projects/julia/:/usr/local/cuda/bin:/Library/PostgreSQL/9.0/bin:/Users/relmore/bin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

##




# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export PATH=/usr/local/bin:$PATH

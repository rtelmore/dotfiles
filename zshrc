function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COMP_NAME='Ryan@DU'
COLOR_DEF=$'%f'
COLOR_USR=$'%F{151}'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}$COMP_NAME ${COLOR_DIR}%~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF} $ '

export CLICOLOR=1
alias jlab='jupyter-lab'
alias ls='ls'
alias sl='ls'
alias rm='rm -i'
alias cdr='cd ~/OneDrive\ -\ University\ of\ Denver/research/'
alias cdta='cd ~/OneDrive\ -\ University\ of\ Denver/DU-Talks/'
alias cdte='cd ~/OneDrive\ -\ University\ of\ Denver/DU-Teaching/'
alias lsmore='ls -la | more'
alias myps='ps -u relmore'
alias myq='showq -u relmore'
alias go2du-hpc='ssh -Y relmore4@nsm-hpc.nsm.du.edu'
alias go2rstudio='ssh -Y ryan.elmore@Rstudio.du.edu'
alias cdic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias go2rdac='ssh -Y relmore@rdac.du.edu'
alias cdod='cd ~/OneDrive\ -\ University\ of\ Denver'
export LSCOLORS="Dxfxcxdxbxegedabagacad"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# append
path+=('/usr/local/mysql/bin')
# export to sub-processes (make it inherited by child processes)
export PATH
export WY_USERNAME=kdvd1tr-jxqm0eiz4-dnx7wdh-8po5edrhk6
export WY_PASSWORD=mubGt_24z!mbjvltDZ_K_TBd9qW4mP

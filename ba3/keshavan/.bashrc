#! /bin/bash
#export PYTHONPATH=:~/scripts/BrainImagingPipelines/utils/:~/lib/python/:~jsalva/nipype/
export PYTHONPATH=~/lib/python2.7/site-packages/

# ~/.bashrc: executed by bash(1) for non-login shells.

export PATH=/software/ANTS/versions/130123:$PATH
#export PATH=/software/ANTS-dev/bin:$PATH
export ANTSPATH=/software/ANTS/versions/130123/
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

alias ls='ls --color=auto'
alias ..='cd ..'
alias cd..='cd ..'
alias ll='ls -l'
alias la='ls -la'
alias ip='ipython --no-banner'
# Projects
alias cdsad='cd /mindhive/gablab/sad/'
alias cdsmo='cd /mindhive/gablab/rtsmoking'
alias mybips='cd ~keshavan/scripts/BrainImagingPipelines'
alias scratch='cd /mindhive/scratch/keshavan'
alias crash='python ~/lib/new_displaysubs.py'

# Freesurfer
function test_retest()
    { 
    #. fss 5.1.0
    source /software/common/bin/fss 5.1.0 > /dev/null
    subjdir=/mindhive/xnat/surfaces/rt_test_retest/
    echo "Setting subjects dir to $subjdir"
    export SUBJECTS_DIR=$subjdir
    }
    
function test_rt()
    { 
    #. fss 5.1.0
    source /software/common/bin/fss 5.1.0 > /dev/null
    subjdir=/mindhive/xnat/surfaces/rt_smoking/
    echo "Setting subjects dir to $subjdir"
    export SUBJECTS_DIR=$subjdir
    }    

function sad()
    { 
    source /software/common/bin/fss 5.1.0 > /dev/null
    #. fss 5.1.0
    subjdir=/mindhive/xnat/surfaces/sad/
    echo "Setting subjects dir to $subjdir"
    export SUBJECTS_DIR=$subjdir
    }   
    
sad

# Vim mode
set -o vi


# enable color support of ls and also add handy aliases
#if [ "$TERM" != "dumb" ]; then
#    eval "`dircolors -b`"
#    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
#fi

# some more ls aliases

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/software/local/lib


export WORKON_HOME=/software/python/EPD/virtualenvs/7.3
export PATH=/software/python/EPD/7.3/bin:/software/matlab_versions/2010b/bin/:/software/python/pycharm-2.6.2/bin:/software/common/bin:$PATH
export PATH=/software/bxhtools/bxh_1.9.12.2/bin/:$PATH
source /software/python/EPD/virtualenvs/7.3/nipype0.7/bin/activate

#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#. ~/.bash_completion.d/git_completion.bash

# Setup the torque parallelization queue:
if [ -f /etc/profile.d/modules.sh ]
then
	source /etc/profile.d/modules.sh
fi
if [ `hostname` == "ba3" ]
then
#	echo -ne '\E[37;40m'"\033[mConnected to ba3: Initializing environment for pbs queue\033[0m"
#	echo -en '\E[0;30m'"\033[1m \033[0m"
	echo -e "\e[0;37mConnected to ba3: Initializing environment for pbs queue\e[0m "
	module add torque
	export DISPLAY=ba3.mit.edu$DISPLAY
fi

if [ `hostname` == "computor" ]
then
#	echo -ne '\E[37;40m'"\033[mConnected to computor: Initializing environment for pbs queue\033[0m"
#	echo -en '\E[0;30m'"\033[1m \033[0m"
	echo -e "\e[0;37mConnected to computor: Initializing environment for pbs queue\e[0m "
	module add torque
	export DISPLAY=computor.mit.edu$DISPLAY
	export PATH=$PATH:/usr/lib/afni/bin
fi

if [ `hostname` == "ba8" ]
then
#	echo -ne '\E[37;40m'"\033[mConnected to computor: Initializing environment for pbs queue\033[0m"
#	echo -en '\E[0;30m'"\033[1m \033[0m"
	echo -e "\e[0;37mConnected to ba8: Initializing environment for pbs queue\e[0m "
	module add torque
	export DISPLAY=ba8.mit.edu$DISPLAY
fi

# Murfi

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/software/fastr/packages/vxl/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/software/fastr/packages/gnuplot_i_vxl/lib
export PATH=$PATH:/software/murfi/bin


export TEXINPUTS=.:~/lib/python/latex//:
export PATH=~/bin:$PATH
export PATH=$PATH:/software/afni

if [ -e /etc/fsl/5.0/fsl.sh ]; then
    . /etc/fsl/5.0/fsl.sh
else
    . /etc/fsl/fsl.sh
fi
. /software/common/bin/fss 5.1.0
export PATH=/usr/share/fsl/5.0/bin/:$PATH


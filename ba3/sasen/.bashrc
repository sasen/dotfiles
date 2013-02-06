#! /bin/bash
# ~/.bashrc: executed by bash(1) for non-login shells.

## use keshavan's bips ##
# there's a symlink from ~sasen/bin/bips to ~keshavan/bin/bips, and ~sasen/bin is in $PATH.
#export PYTHONPATH=:~keshavan/scripts/BrainImagingPipelines/utils/:~keshavan/lib/python/:~keshavan/software/lib/python2.7/site-packages/
export PYTHONPATH=~keshavan/lib/python2.7/site-packages/:/software/python/EPD/virtualenvs/7.2/nipype0.5/lib/python2.7/site-packages/:/software/python/EPD/virtualenvs/7.2/nipype0.5/lib/python2.7/site-packages/nipype/:$PYTHONPATH


export PATH=/software/ANTS/versions/120325:$PATH
export PATH=/software/ANTS-dev/bin:$PATH
export ANTSPATH=/software/ANTS/versions/120325/
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

# color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases                         
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dirc\
olors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'                                               
    #alias vdir='vdir --color=auto'                                             

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
fi

# Projects
alias cdmtbi='cd /mindhive/gablab/rtfmri/mTBI'
alias cdmint='cd /mindhive/gablab/rtfmri/fouse'
alias cdgate='cd /mindhive/gablab/GATES/'
alias cdscr='cd /mindhive/scratch/sasen'

alias mybips='cd ~keshavan/scripts/BrainImagingPipelines'
alias crash='python ~keshavan/lib/new_displaysubs.py'

# Freesurfer
function mTBI()
    { 
    source /software/common/bin/fss 5.1.0 > /dev/null
    #. fss 5.1.0
    subjdir=/mindhive/xnat/surfaces/mTBI/
    echo "Setting SUBJECTS_DIR to $subjdir"
    export SUBJECTS_DIR=$subjdir
    }   

function fouse()
    { 
    source /software/common/bin/fss 5.1.0 > /dev/null
    #. fss 5.1.0
    subjdir=/mindhive/xnat/surfaces/rtfmri/fouse/
    echo "Setting SUBJECTS_DIR to $subjdir"
    export SUBJECTS_DIR=$subjdir
    }   

function gates()
    { 
    source /software/common/bin/fss 5.1.0 > /dev/null
    #. fss 5.1.0
    subjdir=/mindhive/xnat/surfaces/GATES/
    echo "Setting SUBJECTS_DIR to $subjdir"
    export SUBJECTS_DIR=$subjdir
    }   
    
fouse

# Vim mode
set -o vi


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/software/local/lib

if [ -e /etc/fsl/5.0/fsl.sh ]; then
    . /etc/fsl/5.0/fsl.sh
else
    . /etc/fsl/fsl.sh
fi
. /software/common/bin/fss 5.1.0

export PATH=/mindhive/gablab/users/fhorn/bin:$PATH
export PATH=/software/python/EPD/7.2/bin:/software/matlab_versions/2010b/bin/:/software/python/pycharm-1.5.3/bin:/software/common/bin:$PATH
export PATH=/software/spm8/:$PATH
export PATH=/software/bxhtools/bxh_1.9.12.2/bin/:$PATH
source /software/python/EPD/virtualenvs/7.2/nipype0.5/bin/activate

EPDVER=7.2
if [ $EPDVER == '7.2' ]
then
    export WORKON_HOME=/software/python/EPD/virtualenvs/7.2
    #export PATH=/software/python/EPD/7.2/bin:$PATH
    #source /software/python/EPD/7.2/bin/virtualenvwrapper.sh
    #workon nipype0.5
else
    export WORKON_HOME=/software/python/EPD/virtualenvs/7.1
    export PATH=/software/python/EPD/7.1/bin:$PATH
    #source /software/python/EPD/7.1/bin/virtualenvwrapper.sh
    #workon nipype0.4
fi

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
#	export DISPLAY=ba3.mit.edu$DISPLAY
fi


# Murfi

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/software/fastr/packages/vxl/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/software/fastr/packages/gnuplot_i_vxl/lib
export PATH=$PATH:/software/murfi/bin


export TEXINPUTS=.:~/lib/python/latex//:
export PYTHONPATH=~/lib/python2.7/site-packages/:$PYTHONPATH
export PATH=~/bin:$PATH
export PATH=$PATH:/software/afni

umask 0002
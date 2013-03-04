## sasen@mit.edu
## personal bash aliases
## alias name='command -options'
##alias essh='e /ssh:sasen@ba3:/mindhive/gablab/rtfmri/fouse/configs/sasenfouse.py'
alias essh='e /ssh:sasen@ba3:~/scripts/sasenfouse.py'
#--------------------------

alias eba='emacs -nw ~/.bash_aliases'
alias sba='source ~/.bash_aliases'
alias brc='e ~/.bashrc'
alias sbrc='source ~/.bashrc'

#### things to do
alias e='emacs -nw '
alias fv='freeview '
alias ag='sudo apt-get install '
alias ipynb='ipython notebook --pylab=inline'

#### stuff i wrote
alias exam='python ~/sasen/scripts/examineRun.py'

#### places to go... local
alias cddot='cd ~sasen/gitlocal/dotfiles/gablab-iMac/sasen/'
alias cdrt='cd ~/gitlocal/realtime'
alias cdmu='cd ~/gitlocal/murfi'
alias cdsub='cd ~/subjects/'
#-------------------------
#### places to go... remote
alias ssha='ssh sasen@wm.mit.edu'
alias sshb='ssh -XY sasen@ba3.mit.edu'
alias sshp='ssh -X ss@paul.mit.edu'

#### git stuff
alias gs='git status'
alias gf='git fetch '
alias gfa='gf --all'
alias gpo='git push origin'
alias gr='git remote -v'
alias gb='git branch -a'
alias gls='git ls-files'
alias glog='git log'
alias gd='git diff'
alias gh='git help'
alias ga='git add'
alias gca='git commit -a'
alias gch='git checkout'
alias gchm='git checkout master'

#### realtime specific
alias prt='python realtime_app.py'
#---------------
alias snii1='servenii4d run1.nii localhost $SCANNERPORT 2'
alias murf1='murfi -f scripts/run1.xml'
alias murf2='murfi -f scripts/run2.xml'

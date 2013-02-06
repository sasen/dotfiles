## sasen@mit.edu
## personal bash aliases
## alias name='command -options'
## alias essrt='e /ssh:sasen@ba3:~/SST/ssrtEstimate.m'
#--------------------------

alias eba='emacs -nw ~/.bash_aliases'
alias sba='source ~/.bash_aliases'
alias brc='e ~/.bashrc'
alias sbrc='source ~/.bashrc'

#### things to do
alias ll='ls -alrht'
alias e='emacs -nw '
alias fv='freeview '
alias ag='sudo apt-get install '
alias ipynb='ipython notebook --pylab=inline'

#### stuff i wrote
alias exam='python ~/sasen/scripts/examineRun.py'

#### places to go... local
alias proj='cd /mindhive/gablab/rtfmri/fouse/'
alias pil='cd /mindhive/gablab/rtfmri/fouse/pilots/'
alias fnii='cd /mindhive/xnat/data/rtfmri/fouse/'
alias sf='cd /mindhive/scratch/sasen/rtfmri/fouse/'
#-------------------------
#### places to go... remote
alias ssha='ssh sasen@wm.mit.edu'
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


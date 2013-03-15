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
alias g='grin --force-color'
alias gfile='g -l'

## redefines
##NOPE alias fslhd='less $(fslhd)'

#### stuff i wrote
alias exam='python ~/sasen/scripts/examineRun.py'

#### places to go... local
alias cddot='cd ~ss/software/dotfiles/paul/ss/'
alias cdrt='cd ~/software/realtime'
alias cdmu='cd ~/software/murfi'
alias cdrts='cd ~/software/realtime/scripts'
alias cdapp='cd ~/software/realtime/realtime_app/'
alias cdsub='cd ~/subjects/'
#-------------------------
#### places to go... remote
alias ssha='ssh sasen@wm.mit.edu'
alias sshb='ssh -XY sasen@ba3.mit.edu'


#### git stuff
alias gs='git status'
alias gf='git fetch '
alias gfa='gf --all'
alias gpo='git push origin'
alias gr='git remote -v'
alias gb='git branch -av'
alias gls='git ls-files'
alias glog='git log'
alias gd='git diff'
alias gh='git help'
alias ga='git add'
alias gca='git commit -a'
alias gch='git checkout'
alias gchm='git checkout master'

#### realtime specific
#alias pmak='python mako_cherry.py 18.93.14.16 8080 | tee logMako.txt 2>&1'
alias lmak='grep -v ENG logMako.txt | grep -v Mozilla'
#alias pmak='python realtime_app.py | tee logMako.txt 2>&1'
alias prt='python realtime_app.py'
#---------------
alias snii1='servenii4d run1.nii localhost $SCANNERPORT 2'
#alias snii2='servenii4d ../run2.nii localhost 15000 2'
alias murf1='murfi -f scripts/run1.xml'
alias murf2='murfi -f scripts/run2.xml'

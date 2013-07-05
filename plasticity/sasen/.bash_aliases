## sasen@mit.edu
## personal bash aliases
## alias name='command -options'
## alias essh='e /ssh:user@server:/file/name/here.tex'
#--------------------------

#### meta
alias eba='e ~/.bash_aliases'
alias sba='source ~/.bash_aliases'
alias brc='e ~/.bashrc'
alias sbrc='source ~/.bashrc'

#### things to do
alias e='emacs -nw '
alias duh="du -h -d 1"
alias g='grin --force-color'
alias gfile='g -l'
#----------
alias tkdiff="/Applications/TkDiff.app/Contents/MacOS/tkdiff"
##alias ipynb='ipython notebook --pylab=inline'

#### places to go... local
alias cddot='cd ~/dotfiles/plasticity/sasen/'
alias cdwjh='cd ~/Documents/useful/jobs/visionlab/'
alias cdwh='cd ~/Documents/useful/jobs/visionlab/whac'
#-------------------------
#### places to go... remote
#alias ssha='ssh -XY sasen@wm.mit.edu'
alias ssha='ssh -XY sasen@linerva.mit.edu'

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

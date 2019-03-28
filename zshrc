
# Path to your oh-my-zsh installation.
export ZSH=/home/rafael/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="superjarin"
ZSH_THEME="jispwoso"

# Plugins
plugins=(
 git aws ubuntu
)

source $ZSH/oh-my-zsh.sh

# -----------
# shortcuts
# -----------
# check folder size with max-depth of 1
alias duh='du -h --max-depth=1'
alias install='sudo aptitude install'
# get current background image
alias current_background_image='gsettings get org.gnome.desktop.background picture-uri | sed s/file://g'
alias vi='vim'
alias ll='ls -l'
alias safe-upgrade='sudo aptitude update && sudo aptitude safe-upgrade'
alias apt-upgrade='sudo apt-get update && sudo apt-get upgrade'
alias fcd='cd find . -type d | fzf'

# Atalhos GIT
alias gok='echo "git commit -a -m \"OK\"" && git commit -a -m "OK"'
alias gpa='echo "git pull --all" && git pull --all'
alias gpom='echo "git push -u origin master" && git push -u origin master'

# Execucao de aplicacao local em PHP
alias runphp='php -S localhost:8000'

# private setting
source /home/rafael/Documents/util/shell/rc.d/zshrc.priv

#fzf - https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh 

#nvm
export NVM_DIR="/usr/local/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# omz
#source ~/.oh-my-zsh/plugins/git/git.plugin.zsh
#source ~/.oh-my-zsh/plugins/ubuntu/ubuntu.plugin.zsh

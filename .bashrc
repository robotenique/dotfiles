#
# ~/.bashrc
#source /etc/profile
export TERM=xterm-color

# Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

NC="\e[m"               # Color Reset

force_color_prompt=yes

echo "$(tput setaf 1)__________      ___.           __                $(tput setaf 2).__                      
$(tput setaf 1)\______   \ ____\_ |__   _____/  |_  ____   $(tput setaf 2)____ |__| ________ __   ____  
 $(tput setaf 1)|       _//  _ \| __ \ /  _ \   __\/ _$(tput setaf 2)_ \ /    \|  |/ ____/  |  \_/ __ \ 
 $(tput setaf 1)|    |   (  <_> ) \_\ (  <_> )  | \  $(tput setaf 2)___/|   |  \  < <_|  |  |  /\  ___/ 
 $(tput setaf 1)|____|_  /\____/|___  /\____/|__|  \\$(tput setaf 2)___  >___|  /__|\__   |____/  \___  >
        $(tput setaf 1)\/           \/                 $(tput setaf 2)\/     \/       |__|           \/ "
alias cdw='cd ..'
alias ls='ls --color=auto'
alias cls='clear'
alias grep='grep --color=auto'
alias netbeans='/usr/local/netbeans-7.4/bin/netbeans'
alias bd='psql -h data.ime.usp.br -p 23001 -U u7577469 -d bd_7577469'
alias ga='git add'
alias gcmsg='git commit -m'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias fk='tput reset'
alias h='cd ~'
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s sourcepath
shopt -s no_empty_cmd_completion
shopt -s cmdhist
shopt -s histappend histreedit histverify
shopt -s extglob
export PATH=$PATH:/home/bcc/robotenique/.gem/ruby/2.1.0/bin

if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi


# Verifica se o shell � interativo.
if [ "$PS1" ]; then

  # Executa o ~/.bash_aliases, se existir.
  if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
  fi

  # Configura a apar�ncia do prompt do shell
  #PS1='[\h:\w]\$ '
  PS2='> '
  export PS2
  export PS1="\[\033[38;5;226m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
  export PATH="$PATH:."
fi


function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

export PATH=/home/bcc/robotenique/anaconda3/bin:$PATH

if [ -n "${SSH_CONNECTION}" ]; then
    CNX=${Green}        # Connected on remote machine, via ssh (good).
elif [[ "${DISPLAY%%:0*}" != "" ]]; then
    CNX=${ALERT}        # Connected on remote machine, not via ssh (bad).
else
    CNX=${BCyan}        # Connected on local machine.
fi


# Path to the bash it configuration
#export BASH_IT="/home/bcc/robotenique/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
#export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
#source $BASH_IT/bash_it.sh

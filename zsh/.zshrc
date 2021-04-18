
#
# Executes commands at the start of an interactive session.
#

prompt_zsh_showStatus () {
  local color='%F{green}'
  state=`spotify-cli now-playing`;
  if [ $state = "Spotify service not found - is it running?" ]; then

  else	
    artist=`spotify-cli now-playing | grep "spotify_artist_name" | cut -d'=' -f2`
    track=`spotify-cli now-playing | grep "spotify_track_name" | cut -d'=' -f2`
    tLen=${#track}
    short=${track:0:$tLen}
    if [ "$tLen" -gt "30" ]; then
    short=${track:0:30}"(...)\""
	fi
    echo -n "%{%F{black}%}\ue0b2%{$bg[black]%}%F{194}%}%{$color%} \uf1bc%{%F{194}%} $artist - $short ";
  fi
}

prompt_zsh_debianIcon () {
	echo -n "%F{224}%}\uf302"
}
#POWERLINE
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon anaconda dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time zsh_showStatus)
POWERLEVEL9K_TIME_FORMAT=" %D{\uf017 %H:%M}"
POWERLEVEL9K_TIME_BACKGROUND="88"
POWERLEVEL9K_TIME_FOREGROUND="191"
POWERLEVEL9K_LINUX_ICON="\uf302"

# 'anaconda and python info'
POWERLEVEL9K_ANACONDA_BACKGROUND="11"
POWERLEVEL9K_ANACONDA_FOREGROUND="0"
POWERLEVEL9K_ANACONDA_LEFT_DELIMITER=""
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=""
POWERLEVEL9K_PYTHON_ICON="%{%F{20}%}\ue606 "


# 'dir colors'
POWERLEVEL9K_DIR_HOME_BACKGROUND='91'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='53'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='53'
POWERLEVEL9K_DIR_HOME_FOREGROUND='231'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='231'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='231'

# 'git hub colors'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='236'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='119'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='232'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='214'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='232'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='167'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='232'

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B0"




# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# Customize to your needs...
source ~/.zprezto/modules/per-directory-history/per-directory-history.plugin.zsh
export TERM="xterm-256color"
export SUBLIME=subl
export EDITOR="nano"
export VISUAL="nano"
export LSCOLORS="exfxcxdxbxegedabagacad"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/juliano/bin:/home/juliano/.intellij/bin:/home/juliano/Downloads/pycharm-2018.2.4/bin"
export PATH="/home/juliano/anaconda3/bin:$PATH"

alias cat='bat'
alias c='clear'
alias up='cd ..'
alias h='cd ~'
alias disk='cd /'
alias sound1='pacmd set-card-profile 1 output:analog-stereo+input:analog-stereo'
alias opc='nautilus ./'
alias touchh="sudo modprobe -r psmouse && sudo modprobe psmouse proto=imps"
alias sshime="ssh robotenique@linux.ime.usp.br"
alias sshlin="ssh robotenique@python"
alias shreload="source ~/.zshrc"
alias reltmp="source ~/.ztemp"
alias opn="nautilus /opt/lampp/htdocs"
alias ilinux="cat /etc/*-release"
alias c='tput reset'
alias gcl='git clone'
alias gpublic='git push public'
alias glpublic='git pull --allow-unrelated-histories public master'
alias activate='source activate robotenique'
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gapa="git add --patch"
alias gb="git branch"
alias gba="git branch -a"
alias gbr="git branch --remote"
alias gc="git commit -v"
alias gc!="git commit -v --amend"
alias gca="git commit -v -a"
alias gca!="git commit -v -a --amend"
alias gclean="git clean -fd"
alias gpristine="git reset --hard && git clean -dfx"
alias gcm="git checkout master"
alias gcmsg="git commit -m"
alias gco="git checkout"
alias gcount="git shortlog -sn"
alias gcp="git cherry-pick"
alias gcs="git commit -S"
alias gd="git diff"
alias gdca="git diff --cached"
alias gdt="git diff-tree --no-commit-id --name-only -r"
alias gdt="git difftool"
alias gfa="git fetch --all --prune"
alias gg="git gui citool"
alias gga="git gui citool --amend"
alias gignore="git update-index --assume-unchanged"
alias git-svn-dcommit-push="git svn dcommit && git push github master:svntrunk"
alias gk="gitk --all --branches"
alias gl="git pull"
alias glg="git log --stat --max-count = 10"
alias glgg="git log --graph --max-count = 10"
alias glgga="git log --graph --decorate --all"
alias glog="git log --oneline --decorate --color --graph"
alias glp="_git_log_prettily (git log --pretty=$1)"
alias gm="git merge"
alias gmt="git mergetool --no-prompt"
alias gp="git push"
alias gpoat="git push origin --all && git push origin --tags"
alias gr="git remote"
alias grba="git rebase --abort"
alias grbc="git rebase --continue"
alias grbs="git rebase --skip"
alias grbi="git rebase -i"
alias grh="git reset HEAD"
alias grhh="git reset HEAD --hard"
alias grmv="git remote rename"
alias grrm="git remote remove"
alias grset="git remote set-url"
alias grup="git remote update"
alias grv="git remote -v"
alias gsd="git svn dcommit"
alias gsps="git show --pretty = short --show-signature"
alias gsr="git svn rebase"
alias gss="git status -s"
alias gst="git status"
alias gsta="git stash save"
alias gstaa="git stash apply"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gstp="git stash pop"
alias gsts="git stash show --text"
alias gts="git tag -s"
alias gunignore="git update-index --no-assume-unchanged"
alias gunwip="git log -n 1 | grep -q -c "--wip--" && git reset HEAD~1"
alias gup="git pull --rebase"
alias gvt="git verify-tag"
alias gwch="git whatchanged -p --abbrev-commit --pretty = medium"
alias gtmp="git add . && git commit -m 'updTmp $RANDOM' && git push"
alias foaf="echo 'PREFIX foaf: <http://www.ime.usp.br/~renata/>'"
alias arq="~/home/juliano/Downloads/apache-jena-3.5.0/bin/arq"

LS_COLORS=$(ls_colors_generator)


run_ls() {
	ls-i --color=auto -w $(tput cols) "$@"
}

run_dir() {
	dir-i --color=auto -w $(tput cols) "$@"
}

run_vdir() {
	vdir-i --color=auto -w $(tput cols) "$@"
}
alias ls="run_ls"
alias dir="run_dir"
alias vdir="run_vdir"

# OPAM configuration
. /home/juliano/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH="$PATH:/usr/share/texlive"

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

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

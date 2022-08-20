#.bashrc
#Author: urielsv
#Last update: 20/08/22 (DD/MM/YY)
#Updates @ https://github.com/urielsv/dotfiles

#####################################
# Beggining of .bashrc config file. #
#####################################

# Return if not interactive
[[ $- != *i* ]] && return


use_color=true

# Exports
export EDITOR="nvim"
export TERM="alacritty"
export BROWSER="chromium"


# Colors!
if ${use_color} ; then
	# Enable colors for ls, etc.
	if type -P dircolors >/dev/null ; then
		if [[ -f ~/.dircolors ]] ; then
			eval $(dircolors -b ~/.dircolors)
	    fi
    fi    
    # If @root then no colors.
	if [[ ${EUID} == 0 ]] ; then
		PS1='\u@\h \w \$ '
	else
        PS1='\[\033[01;36m\]\u@\h\[\033[01;32m\] \w \$\[\033[00m\] '
	fi
fi

unset use_color


# Aliases
alias cp="cp -i" # confirm before overwriting something
alias df='df -h' # human-readable sizes
alias free='free -m' # show sizes in MB
alias ls='ls -h --color=auto' #human-readable sizes
alias egrep='egrep --color=auto'
alias vim='nvim'
alias pac="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo
pacman -S" #Use FZF and more into to pacman packages
alias fyay="yay -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro yay -S"
xhost +local:root > /dev/null 2>&1

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend


# Archive extractor
ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

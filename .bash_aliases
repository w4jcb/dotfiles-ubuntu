# functions
mcd() {
	mkdir -p $1
	cd $1
}

# Easier navigation
alias ..="cd .."
alias cd..="cd .."  # old DOS command correction 
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# about ls
alias lsl='ls -al'
alias dir='ls -al'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -ltrhA'
alias gl='ls|grep --color'
alias lss='ls -lhaF | grep ^l'	# list Symbolic links
alias lsd='ls -lhaF | grep ^d'	# list directories
alias lsf='ls -lhaF | grep ^-'  # list files


# about terminal
alias c='clear'
alias r='reset'

# others
alias brc='source ~/.bashrc' # reloads ~/.bashrc file
alias ghistory="history | grep"
alias port='netstat -tulanp'
alias listen="lsof -P -i -n" 
alias ?='man' #haha

alias f='file'
alias s='stat'

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'



# Just for fun
alias hi='echo "Hello World"'

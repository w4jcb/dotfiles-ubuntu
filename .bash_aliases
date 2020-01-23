#functions
mcd() {
	mkdir -p $1
	cd $1
}

#about ls
alias lsl='ls -al | less'
alias dir='ls -al'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -ltrhA'
alias ..='cd ../'
alias ...='cd ../..'
alias gl='ls|grep --color'

#about terminal
alias c='clear'
alias r='reset'

#others
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




alias hi='echo "Hello World"'

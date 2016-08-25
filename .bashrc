#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Color prompt code
# syntax: [\[\033[<color code>m\]
# example:	1;33	yellow		0;30	black
#		1;37	white		0;34	blue
#		0;32	green		0;36	cyan
#		0;31	red		0;35	purple
#		0;33	brown		0;37	light gray
#		1;30	dark gray	1;34	light blue
#		1;32	light green	1;36 	light cyan
#		1:31	light red	1;35	light purple
	
PS1='[\[\033[1;33m\]\u\[\033[0m\]\[\033[1:37m\]@\[\033[0;32m\]\h\[\033[1;37m\] \w \$] \[\033[0m\]'

# colored highlights
force_color_prompt=yes

# "Unable to lock database" Error

alias rm-pacman-db="sudo rm /var/lib/pacman/db.lck"

# PkgCacheClean
alias pcc="sudo pkgcacheclean 1"

# reenitialises the Terminal so as to be able
# to use any changes made to ~/.bashrc

alias src="source ~/.bashrc"

export VISUAL="vim"
export EDITOR="$VISUAL"
#remove orphan 


alias pdelete="sudo pacman -Rsn"

#remove all orphan

alias pdelete-all="sudo pacman -Rs $(pacman -Qqdt)"
alias Simplenote="/usr/local/Simplenote-linux-x64/Simplenote"

# tmux session
tmux attach &> /dev/null

if [[ ! $TERM =~ screen ]]; then
	exec tmux
fi

PATH=$PATH:~/scripts/
export PATH

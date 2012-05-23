source ~/dotfiles/.alias
source ~/dotfiles/.env
source ~/dotfiles/.function
source ~/dotfiles/.shopt
source ~/dotfiles/.notify-command

source ~/src/git/contrib/completion/git-completion.bash
__git_complete g _git

PS1="\$(csrv)[\t][\$(rvm current)] \w \$(__git_ps1 \"(%s)\")\n\$ "

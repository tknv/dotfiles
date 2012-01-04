export EDITOR="vim"
# export TERM="st"
export TERM="rxvt"

LS_COLORS='di=1;93'
export LS_COLORS

# {{{ Aliases
alias mv='mv -i'
alias cp=' cp -i'
alias rm='rm -I'
alias j='jobs'
# alias grep='egrep'
alias ls='ls --color --time-style=iso -h --group-directories-first'
alias l='ls -lh'
alias la='ls -lhA'
alias a='ls -d .*'
alias cpptags='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .'
alias beep="echo -ne '\a'"
alias S="screen -S"
alias t=task
alias v=viewnior
alias p='ps -eo pid,ruser,cmd| grep -i'
alias gg='git grep'
alias G='grep -i'
alias gcm='git commit'
# }}}

export HISTSIZE=40000
export HISTFILESIZE=40000
export HISTIGNORE="ls:l:c:clear:d:cd:bg:fg:wnext:wprev:alsamixer:history"
export HISTCONTROL="erasedups:ignorespace"
export HISTTIMEFORMAT='%m%d %H%M: '

# avoid carrying over test status
true

# my path
export PATH=$PATH:/home/tknv/bin
export PATH=$PATH:/home/tknv/bin/eclipse
export PATH=$PATH:/home/tknv/Scripts
export PATH=$PATH:/home/tknv/Scripts/depot_tools

# bin home
export JAVA_HOME=/opt/java/bin

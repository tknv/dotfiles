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
alias S="screen -raAd"
alias t=task
alias tl="task long"
alias tcal='task calendar'
alias tync='task sync'
alias v=viewnior
alias p='ps -eo pid,ruser,cmd| grep -i'
alias gg='git grep'
alias G='grep -i'
alias gmt='git commit'
alias gad='git add'
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
export PATH=$PATH:/home/tknv/Scripts
export PATH=$PATH:/opt/google/depot_tools
export PATH=$PATH:/home/tknv/src/android-SDK/android-sdk-linux/tools
export PATH=$PATH:/home/tknv/src/android-SDK/android-sdk-linux/platform-tools
export PATH=$PATH:/home/tknv/src/GAE190/google_appengine

export ANDROID_HOME=/home/tknv/src/android-SDK/android-sdk-linux

# GAE SDK PATH
export APPENGINE_SDK_PATH=/home/tknv/src/GAE190/google_appengine

# bin home
# export JAVA_HOME=/opt/java/bin
export PYCHARM_JDK=/opt/java/sun-java-jre7
export JAVA_HOME=/opt/jdk1.7.0_71

# sbin
export PATH=$PATH:/usr/sbin/
# cdargs
function cv () {
	cdargs "$1" && cd "`cat "$HOME/.cdargsresult"`" ;
}

#rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

echo -en "\e]P7ffffff" > /dev/null
export PS1="\[\e[1;36m\][\u@\h:\w]\$\[\e[00m\] "

#Git status
# source /home/tknv/src/.bash-git-prompt/gitprompt.sh

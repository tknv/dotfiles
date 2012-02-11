#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ $- == *i* ]]   &&   . ~/Work/Public/git-prompt/git-prompt.sh

[[ -s "/home/tknv/.rvm/scripts/rvm" ]] && source "/home/tknv/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

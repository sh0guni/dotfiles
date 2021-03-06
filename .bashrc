#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

export EDITOR=/usr/bin/vim


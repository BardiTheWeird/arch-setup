#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use powerline
USE_POWERLINE="true"
alias ls='exa -a       -F --color=always --group-directories-first'
alias la='exa -a -a    -F --color=always --group-directories-first'
alias ll='exa -a -l -h -F --color=always --group-directories-first --git'
alias lt='exa    -T    -F --color=always --group-directories-first'
alias ll-s='exa -a -l -h -F --color=always --group-directories-first --git -s modified -r'

export XDG_RUNTIME_DIR=/home/bardi/.tmp

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi

PS1='[\u@\h \W]\$ '

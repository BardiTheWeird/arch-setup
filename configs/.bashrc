#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '
alias ls='exa -a       -F --color=always --group-directories-first'
alias la='exa -a -a    -F --color=always --group-directories-first'
alias ll='exa -a -l -h -F --color=always --group-directories-first --git'
alias lt='exa    -T    -F --color=always --group-directories-first'
alias ll-s='exa -a -l -h -F --color=always --group-directories-first --git -s modified -r'

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi

alias screenshot='grim -g "$(slurp)" - | wl-copy'
export XDG_CONFIG_HOME=$HOME/.config

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

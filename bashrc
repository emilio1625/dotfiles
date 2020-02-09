# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -z "$SSH_AGENT_PID" ]] && . ~/.ssh/ssh-agent-env

if type -P nvim &>/dev/null; then
    export EDITOR=nvim
else
    export EDITOR=vi
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

if [[ -z "$DISPLAY" ]] && [[ $(tty) == "/dev/tty1" ]]; then
    # Nextcloud
    $(sleep 30 && mount ~/Nextcloud/Keepass &>/dev/null) &
    disown %1
    exec dbus-launch --sh-syntax sway 1>| ~/.start-out.log 2>| ~/.start-err.log
fi

type -P pandoc &>/dev/null && eval "$(pandoc --bash-completion)"

bind TAB:menu-complete
export JULIA_CUDA_SILENT=1

BASH_DIR=~/.config/bash
if [[ -d $BASH_DIR ]]; then
	for f in $BASH_DIR/*.sh; do
		[[ -r "$f" ]] && . "$f"
	done
	unset f
fi

CDPATH="$CDPATH:~/:~/Proyectos"

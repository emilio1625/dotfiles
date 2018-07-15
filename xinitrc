#!/usr/bin/env bash

source /etc/X11/xinit/xinitrc-common

# Start GNOME Keyring
# eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# export SSH_AUTH_SOCK
# export GPG_AGENT_INFO
# export GNOME_KEYRING_CONTROL
# export GNOME_KEYRING_PID
# export OOO_FORCE_DESKTOP=gnome
#
# GTK theme
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# eval $(dbus-launch --sh-syntax)

export XDG_CURRENT_DESKTOP=GNOME
# export MOZ_USE_OMTC=1

# exec a program
exec $2

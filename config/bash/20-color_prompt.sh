# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Setup a red prompt for root and a green one for users.
# rename this file to color_prompt.sh to actually enable it
NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
YELLOW="\[\e[1;33m\]"
BLUE="\[\e[1;34m\]"

function nonzero() {
        RETVAL=$?
        [[ $RETVAL -ne 0 ]] && echo " $RETVAL "
}

function test_virtualenv() {
	[[ -z "$VIRTUAL_ENV" ]] && echo "" || echo "(`basename \"$VIRTUAL_ENV\"`) "
}

[[ `whoami` = "root" ]] && UCOLOR=$RED || UCOLOR=$GREEN
[[ -f "/etc/debian_version" ]] && HCOLOR=$BLUE || HCOLOR=$GREEN

PROMPT_COMMAND="$PROMPT_COMMAND; __git_ps1 \
	'[$BLUE\`test_virtualenv\`$HCOLOR\h$NORMAL:\w$YELLOW' \
	'$NORMAL]$RED\`nonzero\`$UCOLOR\\\$ $NORMAL'"


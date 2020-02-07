# Functions
function download-site {
    wget \
        --recursive \
        --page-requisites \
        --html-extension \
        --convert-links \
        --no-parent \
        --restrict-file-names=windows \
        "$1"
}

# fix-spotify() {
#     if [[ "$FBTERM" || $(tty | grep tty) ]]; then
#         ENVIRON=$(cat /proc/$(pgrep -o -u $USER spotify)/environ | tr \\0 \\n)
#             if [ -n "$ENVIRON" ]; then
#                 SPOTIFY_ADDR=$(grep DBUS_SESSION_BUS_ADDRESS <<< $ENVIRON)
#                 export $SPOTIFY_ADDR
#             else
#                 echo "Unable to set DBUS_SESSION_BUS_ADDRESS."
#             fi
#     fi
# }

function play-pause-key {
    playerctl play-pause
}

function next-key {
    playerctl next
}

function previous-key {
    playerctl previous
}

function brightness-down-key {
    brightnessctl -q set 5%-
}

function brightness-up-key {
    brightnessctl -q set +5%
}

function mtp-mount {
    mtp-detect >/dev/null && gio mount -li | \
        awk -F= '{if(index($2,"mtp") == 1)system("gio mount "$2)}'
}

function mmount {
    pushd $(udisksctl mount --block-device "$1" | awk '{print substr($4, 1, length($4)-1)}')
}

function isomount {
    mmount $(udisksctl loop-setup --file "$1" | awk '{print substr($5, 1, length($5)-1)}')
}

function isounmount {
    udisksctl unmount --block-device "$1"
        udisksctl loop-delete --block-device "$1"
}

function mkd {
    mkdir -p "$1" && pushd "$1"
}

function gsearch {
    local query=''
        for word in "$@"; do
            query+="$word+"
                done
                $BROWSER http://google.com/search\?q=$query
}

function dedup {
   awk '! x[$0]++' $@
}

# removes $HISTIGNORE commands from input
function remove_histignore() {
   if [ -n "$HISTIGNORE" ]; then
      # replace : with |, then * with .*
      local IGNORE_PAT=`echo "$HISTIGNORE" | sed s/\:/\|/g | sed s/\*/\.\*/g`
      # negated grep removes matches
      grep -vx "$IGNORE_PAT" $@
   else
      cat $@
   fi
}

function clock {
    (while true; do
        d="$(date +%T)";
        w=${#d};
        c=${COLUMNS:-80};
        x=$(( c - w ));
        printf '\033[s\033[%i;%iH\033[33m%s\033[0m\033[u' 1 "$x" "$d";
        sleep 1;
    done) &
}

# clean up the history file by remove duplicates and commands matching
# $HISTIGNORE entries
function history_cleanup {
   local HISTFILE_SRC=~/.bash_history
   local HISTFILE_DST=/tmp/.$USER.bash_history.clean
   if [ -f $HISTFILE_SRC ]; then
      \cp $HISTFILE_SRC $HISTFILE_SRC.backup
      dedup $HISTFILE_SRC | remove_histignore >| $HISTFILE_DST
      \mv $HISTFILE_DST $HISTFILE_SRC
      chmod go-r $HISTFILE_SRC
      history -c
      history -r
   fi
}

function open-port {
    sudo iptables -I INPUT -p tcp --dport $1 -j ACCEPT
}

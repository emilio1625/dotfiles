# User specific environment and startup programs
source ~/.profile

# If running from tty1 start i3
if [ $(tty) = "/dev/tty1" ]; then
    startx
    exit 0
# TTYs 2-4 for fbterm
elif [[ $(tty | grep tty\[2-4\]) ]]; then
    export FBTERM=1
    exec fbterm
fi


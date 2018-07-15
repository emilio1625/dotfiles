# User specific environment and startup programs
source ~/.profile

# If running from TTY1 start i3
if [ $(tty) = "/dev/tty1" ]; then
    startx i3
# TTY2 for fbterm + tmux
elif [[ $(tty) = "/dev/tty2"  ]]; then
    export FBTERM=1
    exec fbterm-bi ~/Imágenes/dark-concrete.jpg
# TTY3 for spotify
elif [[ $(tty) = "/dev/tty3"  ]]; then
    exec startx spotify
# TTY4 for qutebrowser
elif [[ $(tty) = "/dev/tty4"  ]]; then
    exec startx qutebrowser
fi


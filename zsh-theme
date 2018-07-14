# ZSH, TTY and POWERLEVEL9K themes config

POWERLEVEL9K_LINUX_ICON=$'\uF30A' # Fedora Icon
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER="..."
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon dir vcs) # newline context)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(nodeenv pyenv virtualenv_joined todo ram) #battery ram) #vi_mode)
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{white}%F{black} %n@%m %f%k%F{white}%f "

# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_unique"
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='teal'
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND='blue'
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND='red'

ZSH_THEME="powerlevel9k/powerlevel9k"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
base16_gruvbox-dark-hard

if [[ $(tty | grep tty) ]]; then
    ZSH_THEME="tjkirch"
    setfont /usr/lib/kbd/consolefonts/Lat2-Terminus16.psfu.gz
elif [[ ! $TMUX && $FBTERM ]]; then
    export TERM="fbterm"
    # echo -en "\e[3;7;255;255;255}";
    source ~/gruvbox_256palette.sh
    exec tmux
fi

source ~/gruvbox_256palette.sh


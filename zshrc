# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/emilio1625/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"
source ~/.zsh-theme

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    # systemd
    sudo
    # vi-mode
    zsh-autosuggestions
    zsh-completions
)

ZSH_AUTOSUGGEST_USE_ASYNC=1

if [ $(tty) != "/dev/tty1" ]; then
    source $ZSH/oh-my-zsh.sh
fi

# User configuration

# You may need to manually set your language environment
export LANG=es_MX.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vi'
    export VISUAL='vi'
else
    export EDITOR='nvim'
    export VISUAL='nvim'
fi

# History
HISTFILE=~/.zsh-history
HISTSIZE=10000000
SAVEHIST=10000000
setopt appendhistory
setopt inc_append_history
setopt hist_ignore_all_dups
setopt bang_hist
setopt hist_reduce_blanks
setopt share_history
setopt hist_verify

#Widgets
source ~/.zsh-widgets

# Bindkeys 
source ~/.zsh-bindkeys

# Other
export KEYTIMEOUT=1
unsetopt auto_pushd
setopt auto_cd pushd_ignore_dups hist_ignore_space 
zstyle ':completion:*' completer _expand _complete _correct _ignored _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu yes select
zstyle ':completion:*' force-list always
zstyle ':completion:*' special-dirs true
autoload -Uz compinit colors zsh-mime-setup
compinit
colors
zsh-mime-setup

if [[ -n "$DISPLAY" ]]; then
    xmodmap ~/.Xmodmap
fi

# if [[ ! "$DBUS_SESSION_BUS_ADDRESS" ]]; then
    # SPOTIFY_PID="$(pidof -s spotify || pidof -s .spotify-wrapped)"
    # if [[ -n "$SPOTIFY_PID" ]]; then
        # QUERY_ENVIRON="$(cat /proc/${SPOTIFY_PID}/environ | tr '\0' '\n' | grep "DBUS_SESSION_BUS_ADDRESS" | cut -d "=" -f 2-)"
        # if [[ "${QUERY_ENVIRON}" != "" ]]; then
            # export DBUS_SESSION_BUS_ADDRESS="${QUERY_ENVIRON}"
        # fi
    # fi
# fi

# Hack for playerctl outside X.org
if [[ -n $FBTERM ]]; then
    ENVIRON=/proc/$(pgrep -o -u $USER spotify)/environ
    if [ -e $ENVIRON ]; then
        SPOTIFY_ADDR=$(grep -z DBUS_SESSION_BUS_ADDRESS $ENVIRON)
        export $SPOTIFY_ADDR
    else
        echo "Unable to set DBUS_SESSION_BUS_ADDRESS."
    fi
fi

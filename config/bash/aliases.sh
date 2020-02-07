alias reboot="sudo reboot"
alias xrm="sudo xbps-remove -R"
alias t='todo'

# Going up (but is better to just use the directory stack)
alias '..'='..'
alias '...'='../..'
alias '....'='../../..'
alias '.....'='../../../..'
alias '......'='../../../../..'

# Dirs
alias vcs="pushd ~/Proyectos"
alias gists='pushd ~/Proyectos/gists'

# Configuration
alias i3config="$EDITOR ~/.config/i3/config ~/.config/i3status/config"
alias tmuxconfig="$EDITOR ~/.tmux.conf && tmux source-file ~/.tmux.conf"
alias bashconfig="$EDITOR ~/.bashrc && source ~/.bashrc"
alias bashtheme="$EDITOR ~/.config/bash/theme.sh && source ~/.config/bash/theme.sh"
alias bashaliases="$EDITOR ~/.config/bash/aliases.sh && source ~/.config/bash/aliases.sh"
alias bashfunctions="$EDITOR ~/.config/bash/functions.sh && source ~/.config/bash/functions.sh"

# For interactive shells that don't like arrow keys
alias clips='rlwrap clips'

# Repetitive commands
alias unmount='udisksctl unmount --block-device'

#alias cd=pushd
alias info='info --vi-keys'

# ROS
alias debian="proot -R ~/Documentos/tesis/ROS /bin/bash -l"
alias debiansu="proot -S ~/Documentos/tesis/ROS /bin/bash -l"

# Exit the shell
alias ':q'='exit'
alias quit='exit'

# For the memes
alias please=sudo

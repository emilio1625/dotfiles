if [[ -f /etc/debian_version ]]; then
    export HISTFILE=$HOME/.bash_history_debian
    export TERM=stterm-256color
    source /opt/ros/melodic/setup.bash
fi

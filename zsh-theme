# Bindkeys

# In emacs mode 

bindkey -e

# In vi mode

# bindkey -v

# bindkey -M vicmd "${terminfo[khome]}" beginning-of-line
# bindkey -M vicmd "${terminfo[kend]}" end-of-line

# Better history navigation
# bindkey -M vicmd "k" up-line-or-beginning-search
# bindkey -M vicmd "j" down-line-or-beginning-search
# bindkey "^[OA" up-line-or-beginning-search
# bindkey "^[OB" down-line-or-beginning-search

# Use hjkl in completion menu.
# bindkey -M menuselect 'j' vi-down-line-or-history
# bindkey -M menuselect 'k' vi-up-line-or-history
# bindkey -M menuselect 'h' vi-backward-char
# bindkey -M menuselect 'l' vi-forward-char

# Always

# Use home/end normally
# bindkey "${terminfo[khome]}" beginning-of-line
# bindkey "${terminfo[kend]}" end-of-line

# Media Keys
# On ttys and fbterm
bindkey "^[[29~" brightness-down-key
bindkey "^[[31~" brightness-up-key
bindkey "^[[25~" mute-key
bindkey "^[[26~" lower-volume-key
bindkey "^[[28~" raise-volume-key
bindkey "^[[32~" previous-key
bindkey "^[[33~" play-pause-key
bindkey "^[[34~" next-key

# On tmux
bindkey "^[[1;2S" brightness-down-key
bindkey "^[[15;2~" brightness-up-key
bindkey "^[[1;2P" mute-key
bindkey "^[[1;2Q" lower-volume-key
bindkey "^[[1;2R" raise-volume-key
bindkey "^[[17;2~" previous-key
bindkey "^[[18;2~" play-pause-key
bindkey "^[[19;2~" next-key

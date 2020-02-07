if [[ -f "/etc/bash_completion.d/git-prompt" ]]; then
    . "/etc/bash_completion.d/git-prompt"
elif [[ -f "/usr/lib/git-core/git-sh-prompt" ]]; then
    . "/usr/lib/git-core/git-sh-prompt"
elif [[ -f "/usr/share/git/git-prompt.sh" ]]; then
    . "/usr/share/git/git-prompt.sh"
else
    __git_ps1() {
        echo "D:"
    }
fi

export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:$PATH

# Use macvim (requires 'brew cask install macvim')
alias vim='mvim'
# Use ripgrep (requires 'brew install ripgrep')
alias grep='rg'
# Don't store SSH key in known_hosts
alias sshh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Bash completion (requires 'brew install bash-completion')
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

function checkout_pr {
    local PR=$1
    git fetch origin pull/${PR}/head:pr-${PR}
    git checkout pr-${PR}
}

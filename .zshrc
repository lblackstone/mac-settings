export PATH=/usr/local/opt/python/libexec/bin:$PATH:$(go env GOPATH)/bin
#
# Use macvim (requires 'brew install macvim')
alias vim='mvim'
# Use ripgrep (requires 'brew install ripgrep')
alias grep='rg'
# Use bat (requires 'brew install bat')
alias cat='bat'
# Don't store SSH key in known_hosts
alias sshh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# Zsh completion (requires 'brew install zsh-completion')
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi


function checkout_pr {
    local PR=$1
    git fetch origin pull/${PR}/head:pr-${PR}
    git checkout pr-${PR}
}

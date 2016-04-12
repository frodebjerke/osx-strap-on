# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#

# ls
alias ls="ls -FGh"
alias l="ls -lAh"
alias ll="ls -lh"
alias la='ls -lah'

alias zshreload="source ~/.zshrc"

# git
#alias gl='git pull'
#alias gp='git push'
#alias gd='git diff'
#alias gc='git commit'
#alias gca='git commit -a'
#alias gco='git checkout'
#alias gb='git branch'
#alias gs='git status'
#alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
#alias changelog='git log `git log -1 --format=%H -- CHANGELOG*`..; cat CHANGELOG*'

alias zshconfig="atom ~/.zshrc"

alias showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

alias k=kubectl
alias fuck=thefuck

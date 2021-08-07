zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

# navigate to root of current git repository
alias cdg='cd "$(git rev-parse --show-cdup)"'

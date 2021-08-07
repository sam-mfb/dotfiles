zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

# commands relative to root of current git repository
alias cdg='cd "$(git rev-parse --show-cdup)"'
alias lsg='ls "$(git rev-parse --show-cdup)"'

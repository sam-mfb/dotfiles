export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/node@12/bin:$PATH"

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

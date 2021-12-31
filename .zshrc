xrdb -merge .Xresources

# Vcs info
autoload -Uz vcs_info
function precmd() {
    vcs_info
}

# Auto complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

zstyle ':vcs_info:git:*' formats ':: %b '

# vi mode
bindkey -v

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Shell history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt SHARE_HISTORY
setopt PROMPT_SUBST

PROMPT='%F{135}%n%f@%F{166}%m%f in %F{76}%2~%f %F{78}${vcs_info_msg_0_}%f%B%F{208}λ%f%b '

# Aliases

# Fix sudo alias
alias sudo='sudo '

# Aliases that make life easier
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -lA'
alias r='ranger'
alias v='nvim'
alias h='htop'

alias xi='xbps-install'
alias xq='xbps-query'
alias xr='xbps-remove'

source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

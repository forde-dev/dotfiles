export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

export ZSH="/usr/share/oh-my-zsh/"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ufetch

# Compilation flags
export ARCHFLAGS="-arch x86_64"
#
# Replace VI with nano as the default text editor
export VISUAL=vim
export EDITOR=vim

# ------------------------------
# Aliases
# ------------------------------

alias vim='nvim'
alias fim='vim $(fzf --preview="cat {}")'

alias cdf='cd $(fd --type directory | fzf)' 

# Pacman aliases
alias pacin="sudo /usr/bin/pacman --needed -Sy"
alias pacup="sudo /usr/bin/pacman -Syu"
alias pacrm="sudo /usr/bin/pacman -Rs"
alias pacinfo="/usr/bin/pacman -Si"

# Protection aliases
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
# alias su='su -'
#
#
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


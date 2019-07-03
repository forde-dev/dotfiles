# ------------------------------
# Oh-My-Zsh Configuration
# ------------------------------

# Path to your oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Load the Oh-my-zsh configuration
plugins=(git pip python common-aliases sudo systemd command-not-found zsh-syntax-highlighting)

source ${ZSH}/oh-my-zsh.sh

# Fix a bug with oh-my-zsh seting LC_CTYPE to 'en_US.utf8' instead of system's locale
export LC_CTYPE="$LANG"
# ------------------------------
# Misc
# ------------------------------

# Output system info using archey3 (https://lclarkmichalek.github.io/archey3/)
[ -r /usr/bin/archey3 ] && clear && /usr/bin/archey3 --config=~/.config/archey3.cfg

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Replace VI with nano as the default text editor
export VISUAL=nano
export EDITOR=nano

# ------------------------------
# Aliases
# ------------------------------

# Pacman aliases
alias pacin="sudo /usr/bin/pacman --needed -Sy"
alias pacup="sudo /usr/bin/pacman -Syu"
alias pacrm="sudo /usr/bin/pacman -Rs"
alias pacinfo="/usr/bin/pacman -Si"

# Protection aliases
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias su='su -'

# Disk free in human terms
alias df='df -h'

# Extras
alias untar='tar -xvf'
alias ci='sudo sh ~/.ci_runner.sh'

# ------------------------------
# PowerLevel9K configuration
# ------------------------------

PROMPT=$'$FG[135]% %n@%m %{$reset_color%}%{$fg[white]%}[${PWD:t}]%{$reset_color%} $(git_prompt_info)\
%{$fg[blue]%}->%{$fg_bold[blue]%} %#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="$FG[135]%["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

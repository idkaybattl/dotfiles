# Splash Screen
fastfetch

# ZINIT
# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"


# Binds
bindkey "^f" autosuggest-accept
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word


# Aliases 
alias ls="eza --color=always --git --no-filesize --icons=always --no-user --no-permissions"
alias vim="nvim"
alias cat='bat --theme="Catppuccin Mocha"'
alias blahaj='display3d /home/ari/.blahaj/blahaj.obj'
alias pipes='pipes.sh'
alias clear='clear; fastfetch'


# Initialize Starship
eval "$(starship init zsh)"

# Add in zsh Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in zsh snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found

# Load Completions
autoload -U compinit && compinit

# History stuff
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no

# Shell Integrations
eval "$(fzf --zsh)"

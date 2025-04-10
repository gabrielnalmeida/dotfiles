# Set the directory we want to store zinit and plugins
export ZINIT_HOME="/home/gnalmeida/zinit/zinit.git"
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/gnalmeida/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"

#ohmyposh
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

#dotnet
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH=$PATH:/usr/share/dotnet

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
    echo "ZINIT não encontrado. Instalando..."
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

#Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

#Load completions
autoload -U compinit && compinit -u
zinit cdreplay -q

eval "$(starship init zsh)"

#Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region
bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors '${(s.:.)LS_COLORS}'
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias la='ls -la'
alias ll='eza -alh'
alias tree='exa --tree'
alias c='clear'
alias vim='nvim'
alias docker-info="docker ps --format '{{.ID}}' | xargs -I {} docker inspect --format '{\"NOME\": \"{{.Name}}\", \"IP\": \"{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}\", \"PORTA\": \"{{range .NetworkSettings.Ports}}{{(index . 0).HostPort}}{{end}}\"}' {}"

# Shell integrations
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init --cmd cd zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
#omz update
zstyle ':omz:update' frequency 7
zstyle ':omz:update' mode auto      
zstyle ':omz:update' mode reminder  
#title of window
DISABLE_AUTO_TITLE="true"
#corections
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"
#pluggins
plugins=(git zsh-autosuggestions kitty)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"
#aliases
alias vim=nvim

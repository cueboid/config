autoload -U colors && colors

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
HISTCONTROL=ignoreboth

# prompt
setopt PROMPT_SUBST
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b)%f'
PROMPT='%F{%(?.green.red)}➜%f  %F{blue}%~%f  ${vcs_info_msg_0_}
%# '

# shares zsh history between sessions
setopt SHARE_HISTORY

# means cd can not be ommited when changing directory
setopt auto_cd

# disable terminal beep
unsetopt beep

# autocompletion stuff
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# vi mode stuff
bindkey -v
export KEYTIMEOUT=1

# HACK: fixes backspace just not working when going from normal to insert mode
bindkey -M viins '^?' backward-delete-char
bindkey -M viins '^H' backward-delete-char

# improve how ls and grep are displayed
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias la="ls -lathr"

alias info="info --vi-keys"

alias pm="pulsemixer"
alias pc="pacmixer"
alias lg='lazygit'
alias zj='zellij'
alias mk='make'
alias n='nvim'
alias v='vim'

if ! command -v hx &> /dev/null; then
	alias hx='helix'
fi

pfetch


# Colors and prompt
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Aliases
[ -f "/home/spencer/.config/aliasrc" ] && source "/home/spencer/.config/aliasrc"

# vi mode
bindkey -v

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# plugins
source /home/spencer/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/spencer/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

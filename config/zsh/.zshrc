# Set up the prompt
# autoload -Uz promptinit
# promptinit
# prompt adam1
PS1='%F{cyan}%n@%m %F{green}%~ 
 %F{white}%# '

# The following lines were added by compinstall

[[ $- != *i* ]] && return

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' format 'Completion %d'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*:*:git:*' script $ZDOTDIR/plugins/git-completion.bash
fpath=($ZDOTDIR/.zsh $fpath)

zstyle :compinstall filename '$ZDOTDIR/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
setopt beep nomatch notify
unsetopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
### --- Aliases --- ###
alias ls='ls --color=auto'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ec='/usr/bin/emacsclient -c -n -a ""'
alias ecn='/usr/bin/emacsclient -n -a ""'
export EDITOR='/usr/bin/emacsclient -c -a ""'
export CONFIGDIR="$HOME/.config"
export SHOTS="$HOME/Libraries/shots"
export notes="$HOME/documents/notes"

## -- Misc Opts --- ###
bindkey '^[[A' up-line-or-search                                                
bindkey '^[[B' down-line-or-search

# ### --- Plugins --- ###

source $HOME/.config/zsh/plugins/zsh-z.plugin.zsh

# # Node config
#source /usr/share/nvm/init-nvm.sh


# Keychain for ssh keys
#eval $(keychain --eval --quiet id_rsa)

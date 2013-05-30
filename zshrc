# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/stromnov/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# oh-my-zsh configuration
export ZSH=$HOME/Dotfiles/.oh-my-zsh
ZSH_THEME=""

alias pygmentize='pygmentize-2.7'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

URLTOOLS_METHOD="node"
plugins=(colorize encode64 fabric git history history-substring-search macports osx pip python sublime urltools)
source $ZSH/oh-my-zsh.sh

# Activate Dotfiles
if [ -f ${HOME}/Dotfiles/activate ]; then
    . ${HOME}/Dotfiles/activate
fi

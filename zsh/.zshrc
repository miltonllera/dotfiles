#
# .zshrc
#

# prompt format
PROMPT='%F{cyan}%n%f@%F{green}work%f %F{141}%1~%f > '

# history
HISTSIZE=6000
HISTFILE=$ZDOTDIR/.zsh_history
SAVEHIST=5000
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# no need to use cd
setopt auto_cd

# autocompletion
fpath+=$ZDOTDIR/.zfunc
autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# keybinds
source $ZDOTDIR/keybinds.sh

# aliases
source $ZDOTDIR/.zsh_aliases

# plugins
source $ZDOTDIR/plugins.sh

# scripts
fpath+=('/Users/mlle/.local/bin/scripts/')

# julia
if [ -d "/Users/mlle/.juliaup/bin" ]; then
  path+=("/Users/mlle/.juliaup/bin")
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export OPENAI_API_KEY=$(eval cat ~/.ssh/open_ai_key)

neofetch

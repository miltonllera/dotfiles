# Setup fzf
# ---------
#

# if [[ "$OSTYPE" == "linux-gnu"* ]]; then
#   FZF_DIR="/home/linuxbrew/.linuxbrew/opt/fzf"
# elif [[ "$OSTYPE" == "darwin"* ]]; then
#   FZF_DIR="/usr/homebrew/opt/fzf"
# fi

FZF_DIR="/usr/bin/fzf"

if [[ ! "$PATH" == "*$FZF_DIR/bin*" ]]; then
  PATH="${PATH:+${PATH}:}$FZF_DIR/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$FZF_DIR/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$FZF_DIR/shell/key-bindings.zsh"

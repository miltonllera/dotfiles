#
# .zplugins
#

# fuzzy finder
[ -f $ZDOTDIR/.fzf.zsh ] && source $ZDOTDIR/.fzf.zsh

# syntax highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# integrations for iterm2 (I am using kitty so disabled)
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

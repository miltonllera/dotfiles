#
# .zprofile
#


# pyenv
export PYENV_ROOT="$HOME/.pyenv/"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# auto-activation
 # if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# poetry
# export PATH=$PATH:"$HOME/Library/Python/3.9/bin"

# OpenBLAS and LAPACK

# export LDFLAGS="-L/opt/homebrew/opt/openblas/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/openblas/include"

# export PKG_CONFIG_PATH="/opt/homebrew/opt/openblas/lib/pkgconfig"
# export OPENBLAS="/opt/homebrew/opt/openblas"

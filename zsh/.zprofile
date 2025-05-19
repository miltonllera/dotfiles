#
# .zprofile
#

# macos
HOMEBREW_DIR="/opt/homebrew/bin/brew"
eval "$($HOMEBREW_DIR shellenv)"

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# pyenv
# export PYENV_ROOT="$HOME/.local/bin/pyenv/"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# uv
. "$HOME/.local/bin/env"

# auto-activation
 # if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# poetry
export PATH=$PATH:"$HOME/Library/Python/3.9/bin"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/Users/mlle/.local/bin/julia/bin:*)
        ;;

    *)
        export PATH=/Users/mlle/.local/bin/julia/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

# OpenBLAS and LAPACK

# export LDFLAGS="-L/opt/homebrew/opt/openblas/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/openblas/include"

# export PKG_CONFIG_PATH="/opt/homebrew/opt/openblas/lib/pkgconfig"
# export OPENBLAS="/opt/homebrew/opt/openblas"

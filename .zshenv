export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export XDG_STATE_HOME="$HOME/.local/state"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export ATOM_HOME="$XDG_DATA_HOME/atom"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export XDG_DATA_DIRS="/home/david/.config/local/share/flatpak/exports/share:$XDG_DATA_DIRS"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo
export PYLINTHOME="${XDG_CACHE_HOME}"/pylint
export WINEPREFIX="$XDG_DATA_HOME"/wine
export HISTFILE="$XDG_STATE_HOME/zsh/history"

# NNN configuration
#export NNN_TMPFILE='$XDG_CONFIG_HOME/nnn/.lastd'
export NNN_BMS="d:$HOME/Downloads;q:$HOME/repos/qmk_firmware;c:$HOME/repos/code_projects;r:$Home/repos"
. "/home/david/.config/local/share/cargo/env"

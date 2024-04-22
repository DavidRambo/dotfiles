alias nv := build-neovim

hello:
    echo -e "This is the first recipe to catch running 'just' on its own."

build-neovim:
    ~/.config/local/share/chezmoi/neovim-nightly.sh


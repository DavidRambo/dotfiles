alias nv := build-neovim

hello:
    echo -e "This is the first recipe to catch running 'just' on its own."

build-neovim:
    ~/.config/local/share/chezmoi/neovim-nightly.sh

# I might need to move ~/.emacs.d to ~/.config/emacs
install-doom:
    #!/usr/bin/env bash
    if [ -d ~/.emacs.d && ! -d ~/.config/emacs/ ]; then
        echo -e ">>> Copying .emacs.d to .config/emacs\n"
        cp -r ~/.emacs.d ~/.config/emacs
    fi

    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs

    ~/.config/emacs/bin/doom install

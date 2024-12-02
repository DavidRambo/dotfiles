alias nv := build-neovim

hello:
    echo -e "This is the first recipe to catch running 'just' on its own."

repos-dir:
    #!/usr/bin/env bash
    if [ ! -d ~/repos ]; then
        mkdir ~/repos
    fi

lazy:
    nvim --headless "+Lazy! sync" +qa

build-neovim: repos-dir
    #!/usr/bin/env bash
    if [ ! -d ~/repos/scripts ];
    then
      echo -e "[ERROR] The scripts directory does not exist."
      echo -e "Cloning..."
      git clone git@github.com:DavidRambo/scripts.git
    fi
    if [ ! -d ~/repos/scripts ];
    then
      echo -e "[ERROR] The scripts repo is still not in place. Aborting."
    else
      echo -e "Running ~/repos/scripts/setup/neovim-nightly.sh"
      ~/repos/scripts/setup/neovim-nightly.sh
    fi

install-doom: repos-dir
    #!/usr/bin/env bash
    if [ -d ~/.emacs.d ] && [ ! -d ~/.config/emacs/ ]; then
        echo -e ">>> Copying .emacs.d to .config/emacs\n"
        cp -r ~/.emacs.d ~/.config/emacs
    fi

    if [ -f ~/.config/emacs/bin/doom ]; then
        echo ">>> Doom Emacs is already installed."
        exit
    fi

    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs

    ~/.config/emacs/bin/doom install

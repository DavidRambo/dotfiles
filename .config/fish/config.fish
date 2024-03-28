if status is-interactive
    # Commands to run in interactive sessions can go here
end

set EDITOR '/home/david/.local/neovim/bin/nvim'

set -g fish_key_bindings fish_vi_key_bindings

set -gx LEDGER_FILE $HOME/finance/2024.journal

source ~/.config/fish/alias.fish

zoxide init fish | source

# starship init fish | source

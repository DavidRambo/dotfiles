if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting ""

set XDG_CONFIG_HOME $HOME/.config/
set XDG_DATA_HOME $HOME/.local/share
set XDG_CACHE_HOME $HOME/.cache
set XDG_STATE_HOME $HOME/.local/state

source ~/.config/fish/functions/fish_prompt.fish

set CARGO_HOME $XDG_DATA_HOME/cargo

set EDITOR /usr/bin/nvim

set -g fish_key_bindings fish_vi_key_bindings

set -gx LEDGER_FILE $HOME/finance/2024.journal

source /usr/share/fzf/shell/key-bindings.fish

zoxide init fish | source

source ~/.config/fish/alias.fish

uv generate-shell-completion fish | source

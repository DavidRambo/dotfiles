# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Paths
# export PATH=~/.emacs.d/bin:$PATH
export PATH=~/.local/neovim/bin:$PATH # installed from source, accessible in distrobox
export PATH=~/.config/emacs/bin:$PATH
export PATH=~/.config/local/share/cargo/bin:$PATH

export GIO_MODULE_DIR=/usr/lib/x86_64-linux-gnu/gio/modules/
export PYENV_ROOT="$HOME/.pyenv/"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt adam1

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

setopt histignorealldups sharehistory
zle_highlight=('paste:none')

bindkey -v
export KEYTIMEOUT=1

export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
setopt appendhistory

# Use modern completion system
zmodload zsh/complist # must be loaded before compinit
bindkey -M menuselect 'n' vi-backward-char
bindkey -M menuselect 'u' vi-up-line-or-history
bindkey -M menuselect 'i' vi-forward-char
bindkey -M menuselect 'e' vi-down-line-or-history

autoload -Uz compinit
# compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# poetry completions are here:
fpath+=$ZDOTDIR/.zfunc/

# Hatch (Python project manager) completions
. $ZDOTDIR/.hatch-complete.zsh

# export PYTHONSTARTUP="~/.pyenv/versions/3.11.3/lib/python3.11/site-packages/.pythonstartup"
# export PYTHONSTARTUP="/home/david/.pythonstartup"

_comp_options+=(globdots)  # completion with hidden files

# pipx completions
autoload -U bashcompinit
bashcompinit
eval "$(register-python-argcomplete pipx)"

# Fuzzy search with fzf
source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

EDITOR="nvim"
export SUDO_EDITOR="nvim"

# Directory Stack
#
setopt AUTO_PUSHD           # Push the current directory visited onto the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

# Change cursor for vim mode
# It was forcing the cursor in vim to be a beam when starting out, despite being in normal mode.
#cursor_mode() {
#    # See https://ttssh2.osdn.jp/manual/4/en/usage/tips/vim.html for cursor shapes
#    cursor_block='\e[2 q'
#    cursor_beam='\e[6 q'
#
#    function zle-keymap-select {
#        if [[ ${KEYMAP} == vicmd ]] ||
#            [[ $1 = 'block' ]]; then
#            echo -ne $cursor_block
#        elif [[ ${KEYMAP} == main ]] ||
#            [[ ${KEYMAP} == viins ]] ||
#            [[ ${KEYMAP} = '' ]] ||
#            [[ $1 = 'beam' ]]; then
#            echo -ne $cursor_beam
#        fi
#    }
#
#    zle-line-init() {
#        echo -ne $cursor_beam
#    }
#
#    zle -N zle-keymap-select
#    zle -N zle-line-init
#}
#
#cursor_mode

# Edit Command Lines in Vim
#
export VISUAL=vim
autoload -Uz edit-command-line  # This widget is not found
zle -N edit-command-line
bindkey -M vicmd '^v' edit-command-line # Ctrl-v to enter vim

# -------- #
# Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# # # # # # # # # #
# Aliases
# # # # # # # # # #

source ~/.config/zsh/aliases

# Key Bindings
# ^ = CTRL
# \e = ALT
# bindkey <keystroke> <widget>
# or, instead of a widget, it can be a sequence of keystrokes

bindkey '^g' clear-screen  # CTRL-g to clear the screen
bindkey '^[OH' beginning-of-line
bindkey '^[OF' end-of-line

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# Created by `pipx` on 2023-05-17 18:58:29
export PATH="$PATH:/home/david/.local/bin"

# To ensure the shell emits an OSC 7 sequence
# see: https://github.com/wez/wezterm/issues/207
__vte_urlencode() (
  # This is important to make sure string manipulation is handled
  # byte-by-byte.
  LC_ALL=C
  str="$1"
  while [ -n "$str" ]; do
    safe="${str%%[!a-zA-Z0-9/:_\.\-\!\'\(\)~]*}"
    printf "%s" "$safe"
    str="${str#"$safe"}"
    if [ -n "$str" ]; then
      printf "%%%02X" "'$str"
      str="${str#?}"
    fi
  done
)

__vte_osc7 () {
  printf "\033]7;file://%s%s\007" "${HOSTNAME:-}" "$(__vte_urlencode "${PWD}")"
}

__vte_prompt_command() {
  local command=$(HISTTIMEFORMAT= history 1 | sed 's/^ *[0-9]\+ *//')
  command="${command//;/ }"
  local pwd='~'
  [ "$PWD" != "$HOME" ] && pwd=${PWD/#$HOME\//\~\/}
  printf "\033]777;notify;Command completed;%s\007\033]0;%s@%s:%s\007%s" "${command}" "${USER}" "${HOSTNAME%%.*}" "${pwd}" "$(__vte_osc7)"
}

case "$TERM" in
  xterm*|vte*)
    [ -n "$BASH_VERSION" ] && PROMPT_COMMAND="__vte_prompt_command"
    [ -n "$ZSH_VERSION"  ] && precmd_functions+=(__vte_osc7)
    ;;
esac

true

# Syntax Highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/catppuccin_macchiato-zsh-syntax-highlighting.zsh

# Configure zoxide for zsh
eval "$(zoxide init zsh)"

# Set default journal file for hledger
export LEDGER_FILE=~/finance/2024.journal

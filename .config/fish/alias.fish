abbr --add cat 'bat'

# Directory Shortcuts
alias cdq="cd ~/repos/qmk_firmware/"
alias cdd="cd ~/repos/dnr-hugo/"
#alias cdv="cd ~/vimwiki/"
alias cde="cd $XDG_CONFIG_HOME/doom"
alias cdn="cd ~/notes/"
alias cdc="cd ~/repos/code_projects/"
alias cdnv="cd $XDG_CONFIG_HOME/nvim/"
alias cdw="cd $XDG_CONFIG_HOME/wezterm/"

alias erd="erd -HI"
alias erdl="erd -HI -L 1"
alias el="erd -HI -L 1"
alias ela="erd -HI -L 1 -."

# flatpak
alias flup="flatpak update"
alias flupg="flatpak upgrade"

abbr --add gitcm 'git commit -m'
abbr --add gits 'git status'
abbr --add gita 'git add'

# Git for my dotfiles
alias dots="git --git-dir=$HOME/repos/dotfiles/ --work-tree=$HOME"

# Hledger
abbr --add hla "hledger add"
abbr --add ht "hledger -f $HOME/notes/time_ledger.timedot bal"

alias ls='lsd -Fh --color=auto'
alias ll='lsd -hlF --color=auto'
alias la='lsd -laFh --color=auto'
alias lsa='lsd -laFh --color=auto'
alias l.='lsd -d .* --color=auto'

alias nv '~/.local/neovim/bin/nvim'
alias nvim '~/.local/neovim/bin/nvim'

# Config Edit
alias nvf="nvim ~/.config/fish/config.fish"
alias nvnv="nvim ~/.config/nvim/init.lua"
alias nvw="nvim ~/.config/wezterm/wezterm.lua"
alias nvz="nvim ~/.config/zsh/.zshrc"
alias nvza="nvim ~/.config/zsh/aliases"

alias tree="tree --gitignore"

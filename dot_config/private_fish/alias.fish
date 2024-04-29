abbr --add cat bat

# Directory Shortcuts
alias cdq="cd ~/repos/qmk_firmware/"
alias cdd="cd ~/repos/dnr-hugo/"
#alias cdv="cd ~/vimwiki/"
alias cde="cd $XDG_CONFIG_HOME/doom"
alias cdn="cd ~/notes/"
alias cdc="cd ~/repos/code_projects/"
alias cdnv="cd $XDG_CONFIG_HOME/nvim/"
alias cdw="cd $XDG_CONFIG_HOME/wezterm/"
alias cch="cd $XDG_CONFIG_HOME/local/share/chezmoi"

abbr --add dx distrobox
abbr --add dxe "distrobox enter"
abbr --add dxh distrobox-host-exec

alias erd="erd -HI"
alias erdl="erd -HI -L 1"
alias el="erd -HI -L 1"
alias ela="erd -HI -L 1 -."

# flatpak
alias flup="flatpak update"
alias flupg="flatpak upgrade"

# Git
abbr --add ga --position command 'git add'
abbr --add gita 'git add'
abbr --add gch 'git checkout'
abbr --add gitcm --position command --set-cursor 'git commit -m "%"'
abbr --add gcm --position command --set-cursor 'git commit -m "%"'
abbr --add --position command gl 'git log'
abbr --add --position command gr 'git rebase'
abbr --add grm 'git rebase main'
abbr --add gits 'git status'
abbr --add --position command gs 'git status'

# Git for my dotfiles
alias dots="git --git-dir=$HOME/repos/dotfiles/ --work-tree=$HOME"

# Pipe to grep and place cursor at %.
abbr --add G --position anywhere --set-cursor " | grep '%'"

# Hledger
abbr --add hla "hledger add"
abbr --add ht "hledger -f $HOME/notes/time_ledger.timedot bal"

# justfile
abbr --add nvj "nvim ~/justfile"

# ls -> lsd
alias ls='lsd -Fh --color=auto'
alias ll='lsd -hlF --color=auto'
alias la='lsd -laFh --color=auto'
alias lsa='lsd -laFh --color=auto'
alias l.='lsd -d .* --color=auto'

alias nv '~/.local/neovim/bin/nvim'
alias nvim '~/.local/neovim/bin/nvim'

# Config Edit
alias nvf="nvim ~/.config/fish/config.fish"
alias nvfa="nvim ~/.config/fish/alias.fish"
alias nvnv="nvim ~/.config/nvim/init.lua"
alias nvw="nvim ~/.config/wezterm/wezterm.lua"
alias nvz="nvim ~/.config/zsh/.zshrc"
alias nvza="nvim ~/.config/zsh/aliases"

alias sshnas="ssh rambo@192.168.50.237"

alias tree="tree --gitignore"

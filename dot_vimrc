" My local vimrc file: github.com/davidrambo

" * * * * * * Table of Contents * * * * * * *
"
" Plugins managed with vim-plug
" Basic Setup
" Theming
" " Markdown Specific Settings
" Formatting words to wrap together
" Mappings
" limelight
" VimWiki
" markdown preview

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

if empty(glob(data_dir . '/autoload/plug.vim'))

  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

endif

" Plugins managed with vim-plug
" To install, run :PlugInstall
" To update, run :PlugUpdate
" To remove unlisted plugins, run :PlugClean

call plug#begin('~/.vim/plugged')

" vim-snipe
  Plug 'yangmillstheory/vim-snipe'

" Status bar at bottom
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" junegunn's goyo and limelight for pleasant prose writing
  Plug 'junegunn/goyo.vim' 
  Plug 'junegunn/limelight.vim'

" Vim Wiki
  "Plug 'vimwiki/vimwiki'

" vim-zettel
  "Plug 'michal-h21/vim-zettel'

" fuzzy search, required for vim-zettel
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" alternatively:
" set rtp+=/opt/homebrew/opt/fzf

" vim-pencil for more intuitive, word-processor-like arrow navigation
  "Plug 'reedes/vim-pencil'

" Markdown Syntax and Preview
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'
" Instant markdown preview 
" Plug 'suan/vim-instant-markdown/', {'for': 'markdown'} " 
"
" Kitty Syntax Highlighting for kitty conf
  Plug 'fladson/vim-kitty'

" Themes 
  Plug 'catppuccin/vim', { 'as': 'catppuccin' }
  "Plug 'DavidRambo/vim-transparent' 
  Plug 'tribela/vim-transparent'
" Plug 'altercation/vim-colors-solarized'
"  Plug 'ngscheurich/dromad-vim'
"  Plug 'joshdick/onedark.vim'
"  Plug 'postylem/vim-gruvbox8'
"  Plug 'morhetz/gruvbox'
"  Plug 'sainnhe/gruvbox-material'
"  Plug 'sonph/onehalf', { 'rtp': 'vim' }
" Plug 'romgrk/doom-one.vim'

" Enable tweaks to colorschemes after runtimepath
  Plug 'tsiemens/vim-aftercolors'

" autocomplete syntax pairs
  Plug 'Raimondi/delimitMate'

" Python plugins
  Plug 'bjoernricks/vim-autopep8'
  Plug 'vim-python/python-syntax'

call plug#end()

" ......................
" Basic Setup
" ......................
set nocompatible
filetype plugin on
syntax enable
syntax on

set encoding=utf-8
set number
:set nospell

set mouse=a

" Set indentation to 4 spaces
:set shiftwidth=4

" Set <Tab> to 4 spaces
:set tabstop=4
:set expandtab

" Set search to always highlight
set hlsearch

" Set splits to open below and to the right.
set splitbelow splitright

" Set Insert vs. Normal cursor line display
":autocmd InsertEnter * set cul
":autocmd InsertLeave * set nocul

let &t_SI = "\e[6 q"  " steady bar for Insert mode
let &t_EI = "\e[2 q"  " steady block for Normal mode

"..........
" Theming "
"..........

" Set true colors for onehalfdark
if exists('+termguicolors')
   let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
   let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
   set termguicolors
endif

" let g:doom_one_terminal_colors = v:true

colorscheme catppuccin_macchiato
set background=dark

let g:one_allow_italics=1

" let g:gruvbox_italic=1
" let g:gruvbox_contrast_light='hard'
" let g:gruvbox_contrast_dark='hard'

" if has('termguicolors')
"           set termguicolors
"         endif

" Gruvbox-Material Settings
" .........................
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" " Available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_background = 'medium'
" " Available palettes: 'material', 'mix', and 'original'
" let g:gruvbox_material_palette = 'material'
" let g:gruvbox_material_enable_italic = 1
" let g:gruvbox_material_disable_italic_comment = 0
" let &t_ZH="\e[3m"
" let &t_ZR="\e[23m"
" let g:gruvbox_material_enable_bold = 1
" "let g:gruvbox_material_menu_selection_background = 'green'
" let g:gruvbox_material_ui_contrast = 'low'
" "colorscheme gruvbox
" 
" let g:onedark_terminal_italics=1
" let g:onedark_hide_endofbuffer = 1
" let g:onedark_termcolors = 256

" Airline Config "
"let g:airline_solarized_bg='dark'

let g:airline_theme='catppuccin_macchiato'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" snipe highlight
let g:snipe_highlight_gui_color = '#fabd2f'
let g:snipe_highlight_cterm256_color = '234'
let g:snipe_highlight_cterm_color = '7'

" " Markdown Specific Settings
"
" Set vim to recognize *.md as *.markdown
au BufNewFile,BufRead *.md set ft=markdown
" Set markdown files to open with sections unfolded
autocmd FileType markdown normal zR

autocmd FileType netrw highlight netrwDir ctermbg=NONE

" ......................
" Formatting words to wrap together
" ......................
:set wrap
:set linebreak
:set formatoptions=1 
" Prevent Vim from automatically inserting line breaks in newly entered text
:set textwidth=0
:set wrapmargin=0
" Prevent Vim from automatically reformatting when typing on existing lines
" :set formatoptions-=t
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table

" .......................
" Mappings
" .......................
" Remap leader from \ to space (' ')
:let mapleader = " "

" Map zz to be closer to the top third instead of middle
nmap zz zt15<C-Y>

" Map j and k not to jump wrapped lines
nmap j gj
nmap k gk
" Same for up and down arrows
nmap <Up> g<Up>
nmap <Down> g<Down>
inoremap <Up> <C-O>g<UP>
inoremap <Down> <C-O>g<DOWN>

" Copy into '+' register in visual mode
vnoremap <C-c> "+y :let @+=@*<CR>
" Paste from '+' register is already set to <C+V> (as in, Ctrl+shift+v)
"  map <C-V> "+P 

" Map leader then s to save file
map <leader>fs :w<CR>

" Map leader then z to turn on spell checker
" and capital Z to turn off
map <leader>z :set spell<CR>
map <leader>Z :set nospell<CR>

" Map relative numbers on and off
map <leader>r :set rnu<CR>
map <leader>R :set nornu<CR>

" Transparent Plugin Toggle
map <leader>b :TransparentToggle<CR>

" Remap :Goyo to space+g
map <leader>gy :Goyo 35%x80%-5%<CR>
map <leader>go :Goyo 85%-5%x80%-5%<CR>
map <leader>GY :Goyo!<CR>

" <Plug> mappings for Limelight
map <leader>ll :Limelight<CR>
map <leader>LL :Limelight!<CR>

" Quick movements in Insert mode
" To interrupt, press Ctrl-V between characters
inoremap II <Esc>I
inoremap AA <Esc>A
" inoremap OO <Esc>O

" .......
" SNIPE
" .......

" Jump Tokens for Colemak homerow
let g:snipe_jump_tokens = 'arstdhneio'

" Character motion
map <leader>gs <Plug>(snipe-f)

" Word motion
map <leader>ge <Plug>(snipe-ge)

" Swap
nmap <leader>] <Plug>(snipe-f-xp)
nmap <leader>[ <Plug>(snipe-F-xp)

" Cut
nmap <leader>x <Plug>(snipe-f-x)
nmap <leader>X <Plug>(snipe-F-x)

" Replace
nmap <leader>r <Plug>(snipe-f-r)
nmap <leader>R <Plug>(snipe-F-r)

" Append
nmap <leader>a <Plug>(snipe-f-a)
nmap <leader>A <Plug>(snipe-F-a)

" search for files within current directory with fzf
nnoremap <silent> <leader>. :Files<CR>
" search within files of current directory with fzf and silver searcher
nnoremap <silent> <leader>> :Ag<CR>

" Remap split window navigation
map <leader>n <C-w>h
map <leader>e <C-w>j
map <leader>u <C-w>k
map <leader>i <C-w>l

" Map tab creation and closure
nnoremap <leader>t :tabe<CR>
nnoremap <leader>h :tabp<CR>
nnoremap <leader>o :tabn<CR>
  " Note: the other built-in normal mode shortcuts are gt and gT

" Create 25-character-wide vertical split in current working directory and
" then move it to left side (new vertical splits are set to open to the
" right-hand side
nnoremap <leader>T :25vs .<CR><C-W>x

" Close current split or, if none, then the tab
nnoremap <leader>c :close<CR>
" Note: :tabc closes all splits within the window of the tab

" Map turn off highlighting until next search
nnoremap <leader>/ :noh<CR>

" Map whole-file substitution with prompt to `<Space>+s`
map <leader>S :%s///gc<Left><Left><Left><Left>

" .......................
" Autocorrections
" .......................

inoremap whihc which
" inoremap hte the
inoremap taht that

" .......................
"" Mappings for VimWiki ""
" .......................
"nnoremap <leader>vts :VimwikiSearchTags<space>
"nnoremap <leader>vs :VimwikiSearch<space>/\c/<Left>
"nnoremap <leader>vr :VimwikiRebuildTags<CR>
"nnoremap <leader>ln :lnext<CR>
"nnoremap <leader>lp :lprevious<CR>
"nnoremap <leader>lo :lopen<CR>
"nnoremap <leader><CR> :VimwikiTabnewLink<CR>
"
"" list backlinks (i think in another buffer)
"nnoremap <leader>vb :VWB<CR>
"
"" End Vimwiki mapings ""

" Function to check highlighting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" ......................
" Limelight Setup
" The below is necessary to get Limelight to work with my colorscheme
" ......................

" Color name (:help cterm-colors) or ANSI code
"let g:limelight_conceal_ctermfg = 'gray'
"let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
"let g:limelight_conceal_guifg = 'DarkGray'
"let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
"let g:limelight_default_coefficient = 0.5

" Number of preceding/following paragraphs to include (default: 0)
"let g:limelight_paragraph_span = 0

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
"let g:limelight_bop = '^\s'
"let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
"let g:limelight_priority = -1
""""

" ......................
" VimWiki Setup
" ......................

"let g:vimwiki_list = [{'path': '~/vimwiki/',
"                      \ 'auto_tags': 1, 'auto_toc': 1, 'auto_diary_index': 1,
"                      \ 'syntax': 'markdown',
"                      \ 'ext': '.md'}]
"
"" Template for new diary entries
"autocmd BufNewFile ~/vimwiki/diary/[0-9]*.md :silent 0r !echo "\# `date +'\%Y-\%m-\%d'`"
"
"" Automatically update the diary index
""  let g:vimwiki_list = [{'path': '~/vimwiki/', 'auto_diary_index': 1}]
"
"" This should prevent the creation of temporary wikis.
"" That is, it won't treat markdown files outsite my VimWiki directory as wiki
"" files.
"let g:vimwiki_global_ext = 0
"
"" custom folding
"let g:vimwiki_folding = 'custom'
"
"" Folding Settings to make custom fold work
"augroup VimrcAuGroup
"  autocmd!
"  autocmd FileType vimwiki setlocal foldmethod=expr | setlocal foldlevel=3 |
"    \ setlocal foldenable | set foldexpr=VimwikiFoldLevelCustom(v:lnum) | set nospell
"augroup END
"
" ......................
" Pandoc Syntax
" :help pandoc-syntax-configuration
" ......................

" Conceal URLs in links
" let g:pandoc#syntax#conceal#urls
" It needs to be formatted differently...but the help doesn't show how

" ......................
" Markdown Preview Setup
" ......................

" ......................
" Instant Markdown Preview
" https://github.com/suan/vim-instant-markdown#configuration
" default port is localhost:8090
" ......................
"Uncomment to override defaults:
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_browser = "brave --new-window"
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

" Old config line for iamcco's markdown preview
"let g:mkdp_markdown_css = '/home/david/.local/lib/github-markdown-css/github-markdown.css'

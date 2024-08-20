" Enable clipboard support and access to the system clipboard
set clipboard=unnamedplus

" Disable compatibility with old vi, needed for most modern configurations
set nocompatible

" Enable paste mode (useful for pasting content)
set paste

" Automatically turn off paste mode after pasting to avoid unwanted behavior
autocmd InsertLeave * set nopaste

" Set auto-indentation and smart indentation
set autoindent
set smartindent

" Enable syntax highlighting
syntax on

" Display line numbers
set number

" Set the background color scheme
set background=dark

" Customize line number color to be darker and less distracting
highlight LineNr ctermfg=darkgray guifg=#4e5365

" Customize current line number color (Tokyo Night Storm)
highlight CursorLineNr ctermfg=220 guifg=#e0af68

" Customize status line (optional)
highlight StatusLine cterm=bold ctermfg=110 ctermbg=234 guifg=#7aa2f7 guibg=#1a1b26

" Map Alt+a or Opt+a to select all content in the buffer
if has('macunix')
    nnoremap <D-a> ggVG
else
    nnoremap <A-a> ggVG
endif

" Enable line wrapping and improve wrap behavior
set wrap
set linebreak
set showbreak=>>>

" Enable incremental search
set incsearch

" Highlight search matches
set hlsearch

" Enable case-insensitive searching, unless uppercase letters are used
set ignorecase
set smartcase

" Improve command-line completion
set wildmenu
set wildmode=longest:full,full

" Set tab width and use spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Set up a leader key (commonly used for custom mappings)
let mapleader=" "

" Make backspace more powerful (over indentations, EOLs, start of insert)
set backspace=indent,eol,start

" Display matching parentheses and brackets
set showmatch

" Reduce the delay for showing matching parentheses
set matchtime=2

" Faster scrolling
set ttyfast

" Save and restore the cursor position of files
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Disable swap files (optional, but can be useful to avoid clutter)
set noswapfile

" Enable persistent undo
set undofile

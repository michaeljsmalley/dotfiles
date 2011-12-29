""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " get rid of Vi compatibility mode. SET FIRST!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256             " enable 256-color mode.
syntax enable            " enable syntax highlighting (previously syntax on).
colorscheme desert256    " set colorscheme

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai                   " auto-indent
set tabstop=4            " tab spacing
set softtabstop=4        " unify
set shiftwidth=4         " indent/outdent by 4 columns
set shiftround           " always indent/outdent to the nearest tabstop
set expandtab            " use spaces instead of tabs
set smarttab             " use tabs at the start of a line, spaces elsewhere
set nowrap               " don't wrap text

" In Makefiles DO NOT use spaces instead of tabs
autocmd FileType make setlocal noexpandtab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu                   " show line numbers
set laststatus=2         " last window always has a statusline
filetype indent on       " activates indenting for files
set nohlsearch           " Don't continue to highlight searched phrases.
set incsearch            " But do highlight as you type your search.
set ignorecase           " Make searches case-insensitive.

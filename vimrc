runtime! debian.vim

syntax on


"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set number

" Vim-plug
call plug#begin()
Plug 'tpope/vim-sensible'

" NerdTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" Nix
Plug 'LnL7/vim-nix'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Bash
Plug 'vim-scripts/bash-support.vim'


" Markdown with Preview
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarnpkg install' }

call plug#end()

" YAML
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim


" autocmd VimEnter * NERDTree

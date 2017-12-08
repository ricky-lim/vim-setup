set nocompatible
filetype off
filetype plugin indent on

"vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"git interface
Plugin 'tpope/vim-fugitive'

"filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"html
Plugin 'isnowfy/python-vim-instant-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-preview'
Plugin 'tpope/vim-surround'

"tree undo
Plugin 'sjl/gundo.vim'

call vundle#end()

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>

set noswapfile
set nu
set clipboard=unnamed
set colorcolumn=80
set mouse=a
highlight ColorColumn ctermbg=7 guibg=Black

"permanent undo
set undofile
set undodir=${HOME}/.vim/vim_undo
nnoremap <C-u> :GundoToggle<CR>
let g:gundo_return_on_revert=0

"python stuff
au BufRead,BufNewFile *py,*pyw,*.c,*.h 
    \ set tabstop=4 |
    \ set softtabstop=4 | 
    \ set shiftwidth=4 | 
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set encoding=utf-8 

"Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

"Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
"Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start

"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za 

"js stuff
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"bash 
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4


" Roger's vimrc

" Basic configuration items
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set autoindent
set expandtab
set cursorline
set showmatch


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" global search and replace text under cursor via \s
nnoremap <Leader>s :%s/\<<C-R><C-w>\>/

" search for visually selected text using //
vnoremap // y/<<C-R>"<CR>

"  Command tab completion 

" Plugin management
" Install vundle: git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle is for managing plugins
Plugin 'gmarik/vundle'

" nerdtree is a file system viewer
Plugin 'scrooloose/nerdtree'

" fugitive is for git
Plugin 'tpope/vim-fugitive'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'klen/python-mode'
Plugin 'vim-airline/vim-airline'

" Re-enable filetype functionality after all plugins
filetype plugin indent on


" Launch NERDTree
autocmd VimEnter * NERDTree

syntax enable

" Python specific configuration
let python_highlight_all = 1


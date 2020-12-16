set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

" TComment
Plugin 'tomtom/tcomment_vim'

"Stuff useful everywhere
Plugin 'scrooloose/syntastic'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-eunuch'
Plugin 'majutsushi/tagbar'

"Python
Plugin 'vim-python/python-syntax'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'

"Latex
Plugin 'LaTeX-Box-Team/LaTeX-Box'
" ...

"Powerline
Plugin 'powerline/powerline'


set si
syntax on
set foldmethod=syntax
set noexpandtab
set nospell
set si


set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set ruler
set clipboard=unnamed
set backspace=indent,eol,start
inoremap    <buffer>  {<CR>  {<CR>}<Esc>O
vnoremap    <buffer>  {<CR> s{<CR>}<Esc>kp=iB
inoremap (      ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap ((     (
inoremap ()     ()
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

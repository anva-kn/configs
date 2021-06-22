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
" Plugin 'scrooloose/nerdtree'
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
" Airline (status bar for vim like powerline)
Plugin 'vim-airline/vim-airline'

" Themes for airline
Plugin 'vim-airline/vim-airline-themes'

" Better syntax highlighting
Plugin 'sheerun/vim-polyglot'

set si
syntax on
colorscheme deus 
" set background=light
set foldmethod=syntax
set noexpandtab
set nospell
set si

" Airline config
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'


let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" The below line is for enabling powerline.
" However, it is considerably slow when compared to airline
" set rtp+=/Users/anvarkunanbaev/Library/Python/3.8/lib/python/site-packages/powerline/bindings/vim
" set laststatus=2
" set t_Co=256

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

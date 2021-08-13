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

" Nerdtree related stuff
Plugin 'preservim/nerdtree' | 
Plugin 'Xuyuanp/nerdtree-git-plugin' 
" Plugin 'ryanoasis/vim-devicons' 
" Plugin 'PhilRunninger/nerdtree-buffer-ops' |
" Plugin 'PhilRunninger/nerdtree-visual-selection'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set si
syntax on
let g:afterglow_italic_comments=1
let g:afterglow_inherit_background=1
colorscheme afterglow
" set background=light
set foldmethod=syntax
set noexpandtab
set nospell

" Kite config
" Python
let g:kite_supported_languages = ['python']


" Airline config
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" let g:airline_theme='afterglow'
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
let g:airline_symbols.dirty = '⚡'

" NERDtree config
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden=1
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusConcealBrackets = 1 " default: 0
let g:NERDTreeWinSize=40
" Can be enabled or disabled
" let g:webdevicons_enable_nerdtree = 1
set encoding=utf8
set guifont=DroidSansMono_Nerd_Font:h11

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set ruler
set clipboard=unnamed
set backspace=indent,eol,start
nnoremap <S-L> gt
nnoremap <C-e> $
nnoremap <C-a> ^
nnoremap <S-h> gT
nnoremap <C-y> "*y
vnoremap <C-y> "*y
nnoremap <C-p> "*p
vnoremap <C-p> "*p
nnoremap <Tab> ^<Left> 
inoremap    <buffer>  {<CR>  {<CR>}<Esc>O
vnoremap    <buffer>  {<CR> s{<CR>}<Esc>kp=iB
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap \' \'
inoremap ( ()<Left>
inoremap (<CR>  (<CR>)<Esc>O
inoremap (( (
inoremap ()     ()
inoremap [      []<Left>
inoremap [<CR>  [<CR>]<Esc>O
inoremap [[     [
inoremap []     []

" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
"                                                                         "
"         > > > > > > > > > > Basic Setting < < < < < < < < < <           "
"                                                                         " 
" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" enable syndax highlighting
syntax enable               

" enable line number
set nu                 
set rnu

"
set shellslash

" set color theme 
set background=dark
colorscheme gruvbox

"
set grepprg=grep\ -nH\ $*

"
let g:tex_flavor='latex'

" this set tab = 4 spaces
set tabstop=4               

" 
set expandtab

" indenting is 4 spaces
set shiftwidth=4

set autoindent

set cindent

"
set ruler

" " auto matching () [] and {}
" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap { {}<Left>
" inoremap ' ''<Left>
" inoremap " ""<Left>

" change <leader> to <Space>, which is just the space
let mapleader = "\<Space>"

" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
"                                                                         "
"        > > > > > > > > > > Vundle Setting < < < < < < < < < <           "
"                                                                         " 
" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" NERD Commenter
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "
"                                                                         "
"        > > > > > > > > > > Plugin Setting < < < < < < < < < <           "
"                                                                         " 
" " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "


" " " " " " " " " " " " " " " " " " " " " " " " " " "
"                   nerdcommenter                   "
" " " " " " " " " " " " " " " " " " " " " " " " " " "
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 0

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

runtime macros/matchit.vim
set nocompatible

let g:cssColorVimDoNotMessMyUpdatetime = 1


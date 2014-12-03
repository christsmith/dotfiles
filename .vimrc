"Christopher smith
"ctsmi@ucalgary.ca

"Bundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'flazz/vim-colorschemes'		"Many colour schemes
NeoBundle 'altercation/vim-colors-solarized'	"The best color scheme
NeoBundle 'scrooloose/nerdtree'			"file Browser
NeoBundle 'scrooloose/syntastic'		"Syntac checking
NeoBundle 'bling/vim-airline'			"Status bar
NeoBundle 'tpope/vim-surround'			"easily change surroundings
NeoBundle 'honza/vim-snippets'			"library of snippets
NeoBundle 'SirVer/ultisnips'			"snippet plugin
NeoBundle 'kien/ctrlp.vim'			"fuzzy finder
NeoBundle 'Lokaltog/powerline-fonts'		"make powerline fonts work
NeoBundle 'Lokaltog/vim-easymotion'		"easy motion
NeoBundle 'godlygeek/tabular'			"aligment

" NeoBundle 'Shougo/neocomplcache.vim'		"suggestion window
" NeoBundle 'Valloric/YouCompleteMe'		"suggestion window

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------




" ---------------
" PLUGIN SETTINGS
" ---------------

" unicode symbols
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.whitespace = 'Ξ'

set laststatus=2 "show airline with only one buffer

set guifont=Meslo_LG_M_for_Powerline:h11 
set encoding=utf-8
set linespace=-2
highlight Comment cterm=italic
let g:airline_powerline_fonts=1

" easy motion

map <leader>f <Plug>(easymotion-f)
map <leader>F <Plug>(easymotion-F)
" -------------
" Autocomplete
" -------------

iabbrev #d #define
iabbrev #i #include
iabbrev /**/ /********************************************************************/

" --------
" Mappings

" --------
" Change : for ;
nnoremap ; :

" remove highlited search
nnoremap <leader>/ :nohlsearch<CR>

"set leader key 
let mapleader = " "

"better way to move to end of line
nnoremap L $

"better way to move to first non white space character of line
nnoremap H ^

" Map enter in normal mode
nnoremap <CR> o<ESC>
nnoremap <C-CR> O<ESC>

" Alternative ways to exit insert mode to normal mode
inoremap <C-SPACE> <ESC>
inoremap kj <ESC>

" Simpler way to change split screens
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l
nnoremap <C-up> <C-W>+
nnoremap <C-down> <C-W>-
nnoremap <C-left> <C-W><
nnoremap <C-right> <C-W>>
nnoremap <C-=> <C-W>=

"open new vertial split
nnoremap <leader>v <C-W>v
"open new horizontal split
nnoremap <leader>s <C-W>s
"quite split
nnoremap <leader>q :q<CR>
"quick write
nnoremap <leader>w :w<CR>

"open NERDtree
nnoremap <leader>n <ESC>:NERDTree<CR> 

"make Y delete till end of line
nnoremap Y y$

"easily underline text
nnoremap <leader>u yypVr-

"easily surround text
nnoremap <leader>U yypVr-kPVr-j

"inside next ()
onoremap inp :<c-u>normal! f(vi(<cr>

"inside previous ()
onoremap ipp :<c-u>normal! F(vi(<cr>

"open vimrc
nnoremap <leader>r <C-W>v:e $MYVIMRC<cr>

"center file when searching
nnoremap n nzz
nnoremap N Nzz

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" --------
" Settings
" --------

" show line number
set number

" Set auto indenting
set autoindent

" Always show current position
set ruler

" Highlight search results
set hlsearch

syntax enable

" Disable bells
set noerrorbells
set novisualbell

" Show line numbers
set number

" Remove Toolbar
set guioptions-=T

" Remove sidebars
set guioptions+=LlRrb
set guioptions-=LlRrb 

" Skip into message
set shortmess+=I
set nowrap

" Set defult color scheme
set background=dark
colorscheme solarized

" set completion on commands
set wildmenu

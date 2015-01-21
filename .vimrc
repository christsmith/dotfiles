"Bundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

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

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()
filetype plugin indent on

NeoBundleCheck
"End NeoBundle Scripts-------------------------

" ---------------
" PLUGIN SETTINGS
" ---------------

" AIRLINE
" unicode symbols
 let g:airline_left_sep = ''
 let g:airline_right_sep = ''
 let g:airline_symbols.linenr = '¶'
 let g:airline_symbols.branch = '⎇'
 let g:airline_symbols.paste = 'ρ'
 let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
" set guifont=Meslo_LG_M_for_Powerline:h11 
" set encoding=utf-8
" set linespace=-2
" highlight Comment cterm=italic
" let g:airline_powerline_fonts=1

" EASY MOTION
nnoremap <leader>f <Plug>(easymotion-f)
nnoremap <leader>F <Plug>(easymotion-F)

" -------------
" Autocomplete
" -------------

iabbrev #d #define
iabbrev #i #include
iabbrev /**/ /********************************************************************/

" --------
" Mappings
" --------

let mapleader = " "
nnoremap ; :
nnoremap <leader>n <ESC>:NERDTreeToggle<CR> 
" remove highlited search
nnoremap <leader>/ :nohlsearch<CR>
" better way to move to end of line
nnoremap L $
" better way to move to first non white space character of line
nnoremap H ^
" Map enter in normal mode
nnoremap <CR> o<ESC>
nnoremap <C-CR> O<ESC 
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
" open new vertial split
nnoremap <leader>v <C-W>v
" open new horizontal split
nnoremap <leader>s <C-W>s
" quit split
nnoremap <leader>q :q<CR>
" quick write
nnoremap <leader>w :w<CR>
" make Y delete till end of line
nnoremap Y y$
" easily underline text
nnoremap <leader>1 yypVr-
" easily surround text
nnoremap <leader>2 yypVr-kPVr-j
" open vimrc
nnoremap <leader>r <C-W>v:e $MYVIMRC<cr>
" center file when searching
nnoremap n nzz
nnoremap N Nzz
" better line movement in wrapping text
nnoremap j gj
nnoremap k gk
" build ctags file
nnoremap <leader>t :!ctags -R<cr>
" next tag
nnoremap ]t :tnext<cr>
" prev tag
nnoremap [t :tprev<cr>
" keep visual selection on indent
vnoremap > >gv
vnoremap < <gv

" --------
" Settings
" --------
set number				" show line number
set autoindent				" Set auto indenting
set ruler				" Always show current position
set hlsearch				" Highlight search results
syntax enable
set noerrorbells			" Disable bells
set novisualbell
set number				" Show line numbers
set guioptions-=T			" Remove Toolbar
set guioptions+=LlRrb			" Remove sidebars
set guioptions-=LlRrb 
set shortmess+=I			" Skip into message
set nowrap
set background=dark			" Set defult color scheme
colorscheme solarized
set wildmenu				" enable completion on the command line
set scrolloff=5				" keep 5 lines at the top and bottom when scrolling
set clipboard=unnamed			" make the native clipboard work
set laststatus=2			" show underbar with only one buffer

" ---------
" FUNCTIONS
" ---------

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

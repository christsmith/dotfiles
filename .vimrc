"Bundle Scripts-----------------------------
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
	set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle 
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'flazz/vim-colorschemes'		"Lots of colour schemes
NeoBundle 'altercation/vim-colors-solarized'	"The best color scheme
NeoBundle 'scrooloose/nerdtree'			"file Browser
NeoBundle 'scrooloose/syntastic'		"Syntac checking
NeoBundle 'bling/vim-airline'			"Status bar
"NeoBundle 'vim-airline/vim-airline-themes'      "Status bar themes
NeoBundle 'tpope/vim-surround'			"easily change surroundings
NeoBundle 'SirVer/ultisnips' 			"snippet engine
NeoBundle 'honza/vim-snippets'			"library of snippets
NeoBundle 'SirVer/ultisnips'			"snippet plugin
NeoBundle 'kien/ctrlp.vim'			"fuzzy finder
NeoBundle 'Lokaltog/powerline-fonts'		"make powerline fonts work
NeoBundle 'Lokaltog/vim-easymotion'		"easy motion
NeoBundle 'godlygeek/tabular'			"aligment
NeoBundle 'tpope/vim-fugitive'			"git wrapper
NeoBundle 'haya14busa/incsearch.vim'		"incremental search with regex
NeoBundle 'Conque-GDB'                          "gdb
NeoBundle 'mbbill/undotree'                     "undo tree
NeoBundle 'xolox/vim-easytags'			"tag file management
NeoBundle 'xolox/vim-misc'			"misc vimscript auto load funtions for easytags
NeoBundle 'majutsushi/tagbar'			"solution explorer
NeoBundle 'airblade/vim-gitgutter'              "git diff in gutter
NeoBundle 'majutsushi/tagbar'                   "solution explorer
NeoBundle 'valloric/youcompleteme'              "completion suggestions


" NeoBundle 'fatih/vim-go'

call neobundle#end()
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" ---------------
" PLUGIN SETTINGS
" ---------------

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2 " auto close when no errors, but not auto open
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <leader>e :Errors<cr>
nnoremap <leader>E :lclose<cr> 

" EASY MOTION
nnoremap <leader>f <Plug>(easymotion-f)
nnoremap <leader>F <Plug>(easymotion-F)

" ConqueGdb
let g:ConqueGdb_Leader = 'g'


"undo tree
nnoremap <leader>u :UndotreeToggle<cr>

"easy tags
let g:easytags_autorecurse = 0
let g:easytags_async = 1
let g:easytags_auto_highlight = 0 " Takes way too long. it's not worth it
"save tags in project directory as ./tags
let g:easytags_dynamic_files = 2
set cpoptions+=d
set tags=./tags;

"tagbar
nnoremap <leader>c :TagbarToggle<CR>

"You complete me
let g:ycm_auto_trigger = 0


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
" next tag
nnoremap ]t :tnext<cr>
" prev tag
nnoremap [t :tprev<cr>
" keep visual selection on indent
vnoremap > >gv
vnoremap < <gv
"tabs
nnoremap <leader>t :tab split<cr>
nnoremap <leader>l :tabNext<cr>
nnoremap <leader>h :tabprevious<cr>

" --------
" Settings
" --------
set number				" show line number
set autoindent				" Set auto indenting
set ruler				" Always show current position
set hlsearch				" Highlight search results
set incsearch				" Incremental search
set noerrorbells			" Disable bells
set novisualbell
set number				" Show line numbers
set guioptions-=T			" Remove Toolbar
set guioptions+=LlRrb			" Remove sidebars
set guioptions-=LlRrb 
set shortmess+=I			" Skip into message
set nowrap
set wildmenu				" enable completion on the command line
set scrolloff=5				" keep 5 lines at the top and bottom when scrolling
set clipboard=unnamed			" make the native clipboard work
set laststatus=2			" show underbar with only one buffer

syntax enable
set background=dark
colorscheme solarized

" ---------
" FUNCTIONS
" ---------

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

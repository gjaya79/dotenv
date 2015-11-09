set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'gmarik/vundle'
Bundle 'tomtom/tcomment_vim'
Bundle 'jpo/vim-railscasts-theme'
"Bundle 'tomasr/molokai'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-surround'
Bundle 'jiangmiao/auto-pairs'
Bundle 'ervandew/supertab'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-dispatch'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'vim-scripts/blockle.vim'
Bundle 'thoughtbot/vim-rspec'

call vundle#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim

set autoindent
filetype plugin indent on
syntax on
augroup myfiletypes
	autocmd!
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

syntax enable
set background=dark
"let g:molokai_original=1
set t_Co=256
"colorscheme molokai
colorscheme railscasts

set nu

set wildmode=longest,list,full
set wildmenu

let g:vroom_map_key = 0
let g:vroom_use_dispatch = 1
let g:vroom_use_zeus = 1

let g:airline_theme='luna'
let g:airline_powerline_fonts=1
set laststatus=2

if isdirectory($HOME . '/.vim/backup') == 0
	:silent !mkdir -p ~/.vim/backup > /dev/null 2>&1
endif

set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

if isdirectory($HOME . '/.vim/swap') == 0
	:silent !mkdir -p ~/.vim/swap > /dev/null 2>&1
endif

set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

set viminfo+=n~/.vim/viminfo


if exists("+undofile")
	if isdirectory($HOME .'/.vim/undo') == 0
		:silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
	endif

	set undodir=./.vim-undo//
	set undodir+=~/.vim/undo//
	set undofile
endif

" vim-rspec commands
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

"NERDTree toggle
map <C-n> :NERDTreeToggle<CR>


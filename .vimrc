" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

" ================ General Config ====================

set lazyredraw " Don't redraw screen during macros
set tf " Improves redrawing for newer computers
set sc " Show incomplete command at bottom right
set tm=500 " Lower timeout for mappings
set cot=menu " Don't show extra info on completions

" set autochdir
let bufpane_showhelp = 0
set number "Line numbers are good
set backspace=indent,eol,start "Allow backspace in insert mode
set history=1000 "Store lots of :cmdline history
set showcmd "Show incomplete cmds down the bottom
set showmode "Show current mode down the bottom
set gcr=a:blinkon0 "Disable cursor blink
set noerrorbells
set novisualbell
set visualbell t_vb=
set shortmess=atI

set laststatus=2 " Always show the statusline

set autoread "Reload files changed outside vim
set gdefault " search/replace "globally" (on a line) by default

"some stuff to get the mouse going in term
set selectmode+=mouse
set mouse=a
set ttymouse=xterm2

set noshowmatch " show matching bracets
set formatoptions=tcrqn " 自动格式化
set magic " Set magic on
set smartcase

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
set title

"turn on syntax highlighting
syntax on

" ================ Search Settings =================

" set incsearch "Find the next match as we type the search
set hlsearch "Hilight searches by default
set viminfo='100,f1 "Save up to 100 marks, enable capital marks

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

set wrap "Don't wrap lines
set linebreak "Wrap lines at convenient points

" ================ Completion =======================

set wildmode=list:longest
set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=*vendor/rails/**
set wildignore+=*vendor/cache/**
set wildignore+=*.gem
set wildignore+=*log/**
set wildignore+=*tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.a,*.lib,*.so,CVS,vendor/qor,public/system
set wildignore+=*/.git/*,*/.hg/*,*/.svn/* " Linux/MacOSX

" ================ Scrolling ========================

set scrolloff=0 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

for f in split(glob('~/.vim/plugin/settings/*.vim'), '\n')
  exe 'source' f
endfor





" pathogen plugin
" call pathogen#infect()
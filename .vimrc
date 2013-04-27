" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion 
syntax enable
syntax on

" editor settings
set nocompatible
set confirm                                                       " prompt when existing from an unsaved fil
set history=1000
set backspace=indent,eol,start                                    " More powerful backspacing

set nocompatible
" Always show the statusline
set laststatus=2

" set Marked App
:nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

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

set cursorline
set ttyfast
set ruler
set relativenumber
set undofile

" ================ Search Settings =================

set viminfo='100,f1 "Save up to 100 marks, enable capital marks

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch  "Find the next match as we type the search
set showmatch
set hlsearch  "Hilight searches by default
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

autocmd FileType html,htmldjango,xhtml,haml,sass,scss,ruby,javascript,php,css setlocal tabstop=4 shiftwidth=2 softtabstop=2
autocmd FileType python set textwidth=0
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

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

set scrolloff=3 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

for f in split(glob('~/.vim/plugin/settings/*.vim'), '\n')
  exe 'source' f
endfor

" ================ Vundle Management ================

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

"-----------------
" Code Completion
"-----------------
" Bundle 'ervandew/supertab'
" Bundle 'Shougo/neocomplcache'
" Bundle 'Shougo/neocomplcache-snippets-complete'
" Bundle 'mattn/zencoding-vim'
" Bundle 'honza/snipmate-snippets'

"-----------------------
" Surrounding Operation
"-----------------------
" Bundle 'Raimondi/delimitMate'
" Bundle 'tpope/vim-surround'
" Bundle 'vim-scripts/ruby-matchit'
" Bundle 'gregsexton/MatchTag'
" Bundle 'vim-scripts/matchit.zip'

"--------------
" Code Reading
"--------------
" Bundle 'scrooloose/nerdtree'
" Bundle 'scrooloose/nerdcommenter'
" Bundle 'majutsushi/tagbar'
" Bundle 'humiaozuzu/TabBar'
" Bundle 'godlygeek/tabular'
" Bundle 'kien/ctrlp.vim'

"-------------
" Other Utils
" ------------
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-powerline'
" Bundle 'sjl/gundo.vim'
" Bundle 'vim-scripts/mru.vim'
" Bundle 'scrooloose/syntastic'
" Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" Bundle 'tpope/vim-markdown'
" Bundle 'nono/jquery.vim'
" Bundle 'pangloss/vim-javascript'
" Bundle '2072/PHP-Indenting-for-VIm'
" Bundle 'tpope/vim-haml'
" Bundle 'othree/html5.vim'
" Bundle 'kchmck/vim-coffee-script'

"--------------
" Color Scheme
"--------------
" Bundle 'rickharris/vim-blackboard'
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'rickharris/vim-monokai'
" Bundle 'tpope/vim-vividchalk'

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" ================ Plugins =========================

" Nerd Tree 

let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index',
                    \ 'xapian_index', '.*.pid', 'monitor.py', '.*-fixtures-.*.json',
                    \ '.*\.o$', 'db.db', 'tags.bak', '.*\.pdf$', '.*\.mid$',
                    \ '.*\.midi$']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'

let NERDTreeWinSize=30
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

" powerline
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1
let g:Powerline_colorscheme = 'badwolf'

" NeoComplCache
set completeopt-=preview
let g:neocomplcache_enable_at_startup=1
"let g:neoComplcache_disableautocomplete=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
"imap <C-l> <Plug>(neocomplcache_snippets_expand)
"smap <C-l> <Plug>(neocomplcache_snippets_expand)
"imap <C-t> <Plug>(neocomplcache_snippets_jump)
"smap <C-t> <Plug>(neocomplcache_snippets_jump)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" SuperTab
let g:SuperTabDefaultCompletionType="<c-n>"

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" eggcache vim
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" show syntax highlighting groups for word under cursor
nmap <C-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    set transparency=0
    set guifont=Consolas:h14
	set guifontwide=Microsoft\ YaHei:h14
    set showtabline=2
    set columns=140
    set lines=40
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif



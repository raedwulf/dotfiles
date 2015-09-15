" Raedwulf's new simple vim configuration

"" General
set maxmempattern=2000000
set encoding=utf-8
set incsearch
set ignorecase
set smartcase
set scrolloff=2
set nu
set complete=.,w,b,u,t
set wildignore=*.o,*.pyc,*.pyo,.git,.svn
set mouse=av
set ttym=sgr
set hidden
set nofoldenable
set showmatch
set pumheight=8
set number
set ruler
set showcmd
set virtualedit=block
set viminfo='100,f1,<50,:50,/50,h,!
set backupdir=~/.cache/vim

" Filetype
filetype on
filetype plugin on
filetype indent off

" Syntax
syntax on
set synmaxcol=256

" Searching
set incsearch
set hls
set gdefault
set ignorecase
set smartcase

"" Default Formatting
set tabstop=8
set shiftwidth=8
set autoindent
set noexpandtab

" Set correct folding for C
autocmd FileType c,h,cpp silent setlocal fdm=syntax fdn=1
autocmd FileType c,h,cpp set cindent

" Use spaces for tabs in python
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab

" Files to set default textwidth
autocmd FileType mail,tex,plaintex set textwidth=78
autocmd FileType mail,tex,plaintex let g:textwidth=78

" Jump to the last known cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

"" Colors
if &term=~"linux"
	colorscheme desert
else
	colorscheme tir_black
endif

"" Plugins

" Rainbow Parenthesis
autocmd BufReadPost *
\ call rainbow_parenthesis#LoadBraces() |
\ call rainbow_parenthesis#LoadSquare() |
\ call rainbow_parenthesis#LoadRound() |
\ call rainbow_parenthesis#Activate()

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#34343C ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#48484F ctermbg=234

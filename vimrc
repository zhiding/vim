" Store as ~/.vimrc (Unix) or ~/_vimrc (Windows)
"
" Vundle
" https://github.com/gmarik/vundle
set nocompatible "Required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'Lokaltog/vim-powerline'

" Required, plugins available after.
call vundle#end()
filetype plugin indent on

"""" 
" => General
""""
" Sets how many lines of history Vim has to record
set history=999
" Enable filetype plugins
filetype plugin on
filetype indent on
" Set to auto read when a file is changed from outside
set autoread
" Default to Unix LF line endings
set ffs=unix
" No swap files, use version control instead
set noswapfile
" Colorscheme
set t_Co=256
set background=dark
colorscheme hybrid
let g:enable_bold_font = 1


""""
" => Spaces and Tabs
""""
set sw=2 
set sts=2
" Fix Delete (backspace) on Mac OS X
set backspace=indent,eol,start
" Number of visual spaces per <TAB>
set tabstop=2
" Number of spaces in tabs when inserting
set softtabstop=2
" Tabs are spaces
set expandtab
" Except for Makefiles: Hard tabs of width 2
autocmd FileType make set ts=2
" And Markdown
autocmd FileType mkd set sw=4
autocmd FileType mkd set sts=4
au BufRead,BufNewFile *.md set filetype=markdown
" And Java
autocmd FileType java set sw=2
" Indentation
set autoindent
" Bash-style tab completion
set wildmode=longest,list
set wildmenu

""""
" => Highlight
""""
" Enable syntax highlighting
syntax on
" Highlight search results
set hlsearch


" Use OS clipboard for copypasta
set clipboard=unnamed

""""
" => UI configs
""""
" Show line numbers 
set number
" Show column numbers
set ruler
" Highlight the current line
set cursorline
" Case-insensitive search
set ignorecase
" Try smart searching about cases
set smartcase

"
" Folding
"
set foldenable
set foldlevelstart=10
set foldmethod=indent
nnoremap <space> za 
let g:vim_markdown_folding_disabled=1 	" Markdown
"let javaScript_fold=1			" JavaScript
let perl_fold=1				" Perl
let php_folding=1 			" PHP
let r_syntax_folding=1	 		" R
let ruby_fold=1 			" Ruby
let sh_fold_enabled=1			" sh
let vimsyn_folding='af'			" Vim script
let xml_syntax_folding=1		" XML

"
" Movement
"
" move vertically by visual line 
nnoremap j gj
nnoremap k gk
" move to beginning/end of the line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
" Enable OS mouse clicking and scrolling
" Note for Mac OS X: Requires SIMBL and MouseTerm
" http://www.culater.net/software/SIMBL/SIMBL.php
" https://bitheap.org/mouseterm/
if has("mouse")
    set mouse=a
endif

""""
" => Python
""""
augroup vimrc_autocmd 
    autocmd!
" Highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END

""""
" => Powerline config
""""
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2


" author- Andrew Chan

imap jk <Esc>
let mapleader = ","
vnoremap . :norm.<CR>

map 0 ^

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{c,cpp,hpp,h,java,py,js} set expandtab
au BufRead,BufNewFile *.{c,cpp,hpp,h,java,py,js} set shiftwidth=4
au BufRead,BufNewFile *.{c,cpp,hpp,h,java,py,js} set tabstop=4
au BufRead,BufNewFile *.{py,js} set softtabstop=4

" Latex is weird
au BufRead,BufNewFile *.{tex} set novisualbell
let g:Tex_DefaultTargetFormat='pdf'

setlocal textwidth=100 " wrap at 100 characters on a line

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

set nocompatible  " not inheriting system wide vim settings
set nu          " displays line numbers
set autoindent    " useful when writing code to maintain indenting
set smartindent   " starts indenting based on language of code 
set nowrap        " lines past terminal screen width stay on the same line
set ignorecase    " causes searches to be case insensitive
set smartcase     " case sensitive search when item has an upper case letter
set incsearch     " starts search as you type the search pattern
set nohlsearch    " future matches aren't highlighted
set backspace=indent,eol,start  " backspace key acts like standard text editor 

set showmatch 	" matches { [ and ( as your type

set shiftround    " maintains indent when tabs and spaces are mixed
set noerrorbells  " errors won't make noise
set modeline	  " show what I'm doing
set showmode      " reports when inserting, otherwise, you are in command mode
set report=0      " reports changes involving more than 0 lines
set ruler	  " reports line and column number
syntax on         " colors keywords in language
colors elflord

match Error /\%81v.\+/

" Tab completion works properly (UNIX Style) and shows menu of possible options.
set wildmenu
set wildmode=longest:full
set wildignore=*.o,*.bak,*.data,*.class

set scrolloff=2   " causes text to scroll 2 characters before file begin or end

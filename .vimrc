" standard syntax & numbering
" Shows numbers based on the location of the cursor
" TIP: mV will mark the vimrc file so that if you have vim open you can go to
" that mark to reedit your vimrc file by pressing 'V
set number
set relativenumber
set cursorline
syntax on

set guifont=Ubuntu\ Mono\ 15

" set hidden: means we don't have to save before switching buffers
set hidden

" no wrap: dont move offscreen text to new line
"set nowrap

" eg) default tap space = 8, now 4
set tabstop=4
set shiftwidth=4
set expandtab

" ignore makes searches case sensetive/insensetive depending on input
set ignorecase
set smartcase

" make smarter indents/tabs
set autoindent
set smartindent
set smarttab


"Ctags/paths
"---------------------------------------------------------------------------------
" Provides tab completion for all file related tasks
" ** means search through every subdirectory recursively and also makes it fuzzy. 
set path+=**

" This is so that I can work with ctags. basically being able to jump to function definitions even if in another file.
set autochdir
set tags=tags;

" check if file is changed then auto reload
set autoread

" Display all matching files when tab completed
set wildmenu

"custom key remappings
"---------------------------------------------------------------------------------
" this is to remap moving between buffer splits
" note: this overrides the <CTR-W-h> :horizontal split
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"mapping for switching between buffers and tabs

nnoremap <C-left> :tabp<CR>
nnoremap <C-right> :tabn<CR>
nnoremap <C-up> :bn<CR>
nnoremap <C-down> :bp<CR>

" mapping space to saving files if in normal mode
nnoremap <SPACE> :wa<CR>

" remap escape to jk in insert mode
inoremap jk <ESC>

"let the leader be key: '. TIP: you can also have different leaders for different
"things
let mapleader = "'"

" remove highlights after a search
map <leader>h :noh<CR>
" reload file and discard any local changes
map <leader>r :edit!<CR>




"show search results as you type them
set incsearch
"turn on highlighting search
set hlsearch

" highlight tab characters
set listchars=tab:>-,trail:·
highlight SpecialKey guifg=red ctermfg=red
set list

" netrw file browser
let g:netrw_liststyle = 3
let g:netrw_winsizse = 25
" shortcut to open netrw file explore, only works in normal mode
nnoremap <leader>dd :Lexplore<CR>

packadd! dracula
syntax enable
colorscheme dracula

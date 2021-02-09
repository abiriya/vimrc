" standard syntax & numbering
"---------------------------------------------------------------------------------
" Shows numbers based on the location of the cursor
set number
set relativenumber
syntax on

" check spelling
set spell spelllang=en_us

" set hidden: means we don't have to save before switching buffers
set hidden

" no wrap: dont move offscreen text to new line
set nowrap

" eg) default tap space = 8, now 4
set tabstop=4 
set shiftwidth=4
set noexpandtab

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

"remappings keys
"---------------------------------------------------------------------------------
" this is to remap moving between buffer splits
" 	note: this overrides the <CTR-W-h> :horizontal split
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

" prettify vim: color scheme / plugin manager / airline_tails
"---------------------------------------------------------------------------------
" this may be or /is necessary for gnome-terminal
let g:gruvbox_italic=1
colorscheme gruvbox     
set background=dark

" Plugins will be downloaded and installed under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" 	this is status line plug
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" smarter tabline, displays buffers
let g:airline#extensions#tabline#enabled = 1

" set theme from airline plugin  
	" favorite themes
		" 	deus
		" 	zenburn
		" 	base16
let g:airline_theme='deus'

" allow folds to be saved
"
"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git plugin
Plugin 'tpope/vim-fugitive'

" A tree explorer plugin
"Plugin 'scrooloose/nerdtree'

" Comment plugin
"Plugin 'scrooloose/nerdcommenter'

" Syntax checking hacks for vim
"Plugin 'scrooloose/syntastic'

" Fuzzy file, buffer, mru, tag, etc finder.
"Plugin 'kien/ctrlp.vim'

" A plugin to show a diff whenever recovering a buffer
"Plugin 'chrisbra/recover.vim'

" quoting/parenthesizing made simple.
Plugin 'tpope/vim-surround'

" Better line numbers
"Plugin 'myusuf3/numbers.vim'

" Lines to indicate indentation level
Plugin 'Yggdroot/indentLine'

" Plugin to quickly switch between source and header files
"Plugin 'a.vim'

" Lean & mean status/tabline for vim that's light as air
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

" Plugin to manage undo tree
"Plugin 'sjl/gundo.vim'

" Plugin for tab management (rename tabs)
"Plugin 'gcmt/taboo.vim'

" Vim start screen
"Plugin 'mhinz/vim-startify'

" Simplify Doxygen documentation in C, C++, and Python.
"Plugin 'DoxygenToolkit.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Map F2 to open NERDTree
"nmap <F2> :NERDTree<CR>

" Map F3 to open Gundo window
"nnoremap <F3> :GundoToggle<CR>

" Map F8 to toggle Tagbar
"nmap <F8> :TagbarToggle<CR>

" use gj and gk instead of j and k to handle long lines of text easier
nnoremap j gj
nnoremap k gk

" ctrl-backspace will delete to beginning of word in insert mode
inoremap <C-BS> <C-W>

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Backspacing over a tab (4 spaces) backspaces 4 spaces
set softtabstop=4

" Set the font to Consolas
set guifont=Consolas

" Display line numbers
set number

" Highlight all search matches in file
set hlsearch

" Highlight the next search match as I type
set incsearch

" Allow backspace to delete across line breaks
set backspace=indent,eol,start

" Better way to move through windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/<cr>

" Mappings to cycle through tabs
nnoremap <C-n> gT
nnoremap <C-m> gt

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" colorscheme settings
"syntax enable
"set background=dark
"colorscheme solarized

" Add the dependecies folder to the path
let s:dependsdir = $HOME . '/vimfiles/depends'
if (has('win32') || has('win64')) && isdirectory(s:dependsdir)
    let $PATH .= ';' . s:dependsdir
endif


" ~~~~~~~~~~~~ Plugin setttings

" Fix for airline not showing up until a split is created
"set laststatus=2

"if has('win32') || has('win64')
"    let g:startify_session_dir = "$HOME/vimfiles/sessions"
"    let g:startify_bookmarks = [ '$HOME/.vimrc' ]
"else
"    let g:startify_session_dir = "~/.vim/sessions"
"    let g:startify_bookmarks = [ '~/.vimrc' ]
"endif

" Set Startify list order
"let g:startify_list_order = [
"    \ ['Sessions:'], 'sessions',
"    \ ['Most recently used files:'], 'files',
"    \ ['Most recently used files in the current directory:'], 'dir',
"    \ ['Bookmarks:'], 'bookmarks',
"    \ ]



" Syntastic settings (for now just default ones)
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Don't run sytastic checks on python files because python-mode plugin already
" does this.
"let g:syntastic_mode_map = {
"    \ "mode": "active",
"    \ "active_filetypes": [],
"    \ "passive_filetypes": ["python"] }



" Set Dox command (doxygen) to use /// instead of /* */ for C/C++
"let g:DoxygenToolkit_commentType = "C++"



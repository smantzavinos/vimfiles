
call plug#begin('~/.vim/plugged')

" Git plugin
Plug 'tpope/vim-fugitive'

" ayu theme
Plug 'ayu-theme/ayu-vim'

" C++ semantic highlighting using lanaguage server protocol
Plug 'jackguo380/vim-lsp-cxx-highlight'

" Fancy start page
Plug 'mhinz/vim-startify'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plug 'ctrlpvim/ctrlp.vim'

" Syntax highlighting and indentation support for many languages
Plug 'sheerun/vim-polyglot'

" quoting/parenthesizing made simple.
Plug 'tpope/vim-surround'

" Lines to indicate indentation level
Plug 'Yggdroot/indentLine'

" Elegant statusline
Plug 'liuchengxu/eleline.vim'

" Case keeping search and replace (and other things)
Plug 'tpope/vim-abolish'

" Tab utilities. Mainly tab renaming.
" Plug 'gcmt/taboo.vim'
Plug 'webdevel/tabulous'

" Comment code shortcuts
Plug 'scrooloose/nerdcommenter'

" Auto change directory to project root
Plug 'airblade/vim-rooter'

call plug#end()

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

" Mappings to move tabs with ALT
nnoremap <A-n> :tabmove -1<cr>
nnoremap <A-m> :tabmove +1<cr>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>


" Add the dependecies folder to the path
let s:dependsdir = $HOME . '/vimfiles/depends'
if (has('win32') || has('win64')) && isdirectory(s:dependsdir)
    let $PATH .= ';' . s:dependsdir
endif

" Get correct comment highlighting in json files with comments.
autocmd FileType json syntax match Comment +\/\/.\+$+

" Remember tab names in session file
set sessionoptions+=tabpages,globals

" Restore folds with session files
set sessionoptions+=folds

" Map F5 to check if any buffers have changed on disk
nnoremap <F5> :<C-u>checktime<cr>

" Add a marker at column 100
set colorcolumn=100

" Use terminal style tabs in GUI versions of vim
"set guioptions-=e
"set guitabline=0


" ~~~~~~~~~~~~ Plugin setttings

" colorscheme settings
set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu

" Always show status line (recommended in eleline readme)
set laststatus=2

" Rename tab shortcut
nnoremap <leader>tr :<C-u>call g:tabulous#renameTab()<cr>


" ~~~~~~~~~~~ Startup commands
"
" Start in $HOME directory
cd $HOME


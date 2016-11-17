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
Plugin 'scrooloose/nerdtree'

" Comment plugin
Plugin 'scrooloose/nerdcommenter'

" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

" Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'kien/ctrlp.vim'

" quoting/parenthesizing made simple.
Plugin 'tpope/vim-surround'

" Better line numbers
Plugin 'myusuf3/numbers.vim'

" Next generation completion framework
Plugin 'shougo/neocomplete.vim'

" Tag generation and navigation
Plugin 'majutsushi/tagbar'

" Jump anywhere
Plugin 'easymotion/vim-easymotion'

" Solarized colorscheme
Plugin 'altercation/vim-colors-solarized'

" Plugin to quickly switch between source and header files
Plugin 'a.vim'

" Lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Plugin to manage undo tree
Plugin 'sjl/gundo.vim'

" Plugin for tab management (rename tabs)
Plugin 'gcmt/taboo.vim'

" Vim start screen
Plugin 'mhinz/vim-startify'

" Vim session manager
Plugin 'xolox/vim-session'
" vim-session dependency
Plugin 'xolox/vim-misc'

" Simplify Doxygen documentation in C, C++, and Python.
Plugin 'DoxygenToolkit.vim'

" Automated tag generation and syntax highlighting in VIM
Plugin 'xolox/vim-easytags'

" C/C++ omni-completion with ctags database
"Plugin 'OmniCppComplete'


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
nmap <F2> :NERDTree<CR>

" Map F3 to open Gundo window
nnoremap <F3> :GundoToggle<CR>

" Map F8 to toggle Tagbar
nmap <F8> :TagbarToggle<CR>

" Map <leader> lc (latex compile) call latexmk 
nnoremap <leader>lc :!latexmk -pdf %:p<CR>

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

" Set startify sessions folder to the vim-session default folder
 let g:startify_session_dir = '$HOME\vimfiles\sessions'

" Set Startify list order
" let g:startify_list_order = ['sessions', 'files', 'dir', 'bookmarks']
let g:startify_list_order = [
    \ ['Sessions:'], 'sessions',
    \ ['Most recently used files:'], 'files',
    \ ['Most recently used files in the current directory:'], 'dir',
    \ ['Bookmarks:'], 'bookmarks',
    \ ]


" Set the path to the ctags directory for Tagbar plugin. ctags is a dependency of Tagbar
let g:tagbar_ctags_bin = '$HOME/vimfiles/depends/ctags58/ctags.exe'

" Set the path to the ctags directory for easytags plugin.
" For some reason this isn't workin. I still had to add this dir to my PATH
let g:easytags_cmd = '$HOME/vimfiles/depends/ctags58/'

" Add the dependecies folder to the path
let s:dependsdir = $HOME . '\vimfiles\depends'
"let s:dependsdir = 'C:\Users\smantzavinos\vimfiles\depends'
" Add PortablePython's path to $PATH if running on Windows and PortablePython exists
if (has('win32') || has('win64')) && isdirectory(s:dependsdir)
    let $PATH .= ';' . s:dependsdir
endif

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

" With the following mappings (which require gvim), you can press Ctrl-Left or Ctrl-Right to go to the previous or next tabs, and can press Alt-Left or Alt-Right to move the current tab to the left or right.
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" neocomplete settings
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'




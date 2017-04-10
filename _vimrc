set nocompatible              " be iMproved, required
filetype off                  " required

let neocompleteEnable=0
let vimcompletesmeEnable=1

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

" A plugin to show a diff whenever recovering a buffer
Plugin 'chrisbra/recover.vim'

" quoting/parenthesizing made simple.
Plugin 'tpope/vim-surround'

" Better line numbers
"Plugin 'myusuf3/numbers.vim'

" Lines to indicate indentation level
Plugin 'Yggdroot/indentLine'

if has('lua') && neocompleteEnable
    " Next generation completion framework
    Plugin 'shougo/neocomplete.vim'
end

if has('python') && vimcompletesmeEnable
    Plugin 'ajh17/vimcompletesme'
end

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

" Vim session isn't really needed when using Startify
" Vim session manager
"Plugin 'xolox/vim-session'
" vim-session dependency
"Plugin 'xolox/vim-misc'

" Simplify Doxygen documentation in C, C++, and Python.
Plugin 'DoxygenToolkit.vim'

" Automated tag generation and syntax highlighting in VIM
Plugin 'xolox/vim-easytags'
" vim-easytags dependency
Plugin 'xolox/vim-misc'
" Currently needed for easytags_async option on windows
if has('win32') || has('win64')
    Plugin 'xolox/vim-shell'
endif

" Many python utilities
Plugin 'klen/python-mode'

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

" Uncomment this if using a 256 color terminal
"set term=xterm-256color
"set t_Co=256

" colorscheme settings
syntax enable
set background=dark
colorscheme solarized

if has('win32') || has('win64')
    let g:startify_session_dir = "$HOME/vimfiles/sessions"
    let g:startify_bookmarks = [ '$HOME/.vimrc' ]
else
    let g:startify_session_dir = "~/.vim/sessions"
    let g:startify_bookmarks = [ '~/.vimrc' ]
endif

" Set Startify list order
let g:startify_list_order = [
    \ ['Sessions:'], 'sessions',
    \ ['Most recently used files:'], 'files',
    \ ['Most recently used files in the current directory:'], 'dir',
    \ ['Bookmarks:'], 'bookmarks',
    \ ]

"" Easytags settings
" Update tags in the background
let g:easytags_async = 1
" Create project specific tag files instead of global
let g:easytags_dynamic_files = 2

" Set the path to the ctags directory for Tagbar plugin. ctags is a dependency of Tagbar.
" ctags should be in they system path on a unix system.
if (has('win32') || has('win64'))
    let g:tagbar_ctags_bin = '$HOME/vimfiles/depends/ctags58/ctags.exe'
endif

"" python-mode settings
" Enable
let g:pymode = 1
" Trim whitespace on save
let g:pymode_trim_whitespaces = 1
" Use python 3 syntax checking (comment out to auto-detect supported python version)
"let g:pymode_python = 'python3'
" Max line length
let g:pymode_options_max_line_length = 100
" Setup pymode quickfix window
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
" Enable PEP8-complatible python indentation
let g:pymode_indent = 1
" Fast and usual python code folding
let g:pymode_folding = 1
" Support vim motion for python objects
let g:pymode_motion = 1
" Enable show documentation and bind to K
let g:pymode_doc = 0
let g:pymode_doc_bind = 'K'
" Disable auto documentation pop window
set completeopt=menu

" Bind <leader>r to run script
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
" Set breakpoints with <leader>b
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
" Set breakpoint command to auto detect
let g:pymode_breakpoint_cmd = ''

" Turn on code checking
let g:pymode_lint = 1
" Check on every save, even if no changes made
let g:pymode_lint_on_write = 1
let g:pymode_lint_unmodified = 1
" Check code on editing on the fly
let g:pymode_lint_on_fly = 0
" Show error message if cursor placed at the error line
let g:pymode_lint_message = 1
" Set code checkers to use
"let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
let g:pymode_lint_checkers = ['pep8', 'pylint', 'mccabe', 'pyflakes']
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
" Auto open cwindow (quickfix) if any error are found
let g:pymode_lint_cwindow = 0
" Place error signs
let g:pymode_lint_signs = 1

"" Add pymode rope settings here **
" Turn rope off for now. So damn slow.
let g:pymode_rope=0


" Syntastic settings (for now just default ones)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Don't run sytastic checks on python files because python-mode plugin already
" does this.
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": [],
    \ "passive_filetypes": ["python"] }


" Set the path to the ctags directory for easytags plugin.
" For some reason this isn't workin. I still had to add this dir to my PATH
"let g:easytags_cmd = '$HOME/vimfiles/depends/ctags58/'

" Add the dependecies folder to the path
let s:dependsdir = $HOME . '/vimfiles/depends'
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

" Mappings to cycle through tabs
nnoremap <C-n> gT
nnoremap <C-m> gt

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Set Dox command (doxygen) to use /// instead of /* */ for C/C++
let g:DoxygenToolkit_commentType = "C++"

if has('lua') && neocompleteEnable
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
end

if has('python') && vimcompletesmeEnable
    " Make Enter key select current value without inserting new line
    inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
end



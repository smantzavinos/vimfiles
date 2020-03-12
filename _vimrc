set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git plugin
Plugin 'tpope/vim-fugitive'

" Solarized plugin that works well with neovim
Plugin 'icymind/neosolarized'

" Language server protocol plugin
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'

" Provides following commands to auto install language servers
" :LspInstallServer
" :LspUninstallServer
Plugin 'mattn/vim-lsp-settings'

" quoting/parenthesizing made simple.
Plugin 'tpope/vim-surround'

" Lines to indicate indentation level
Plugin 'Yggdroot/indentLine'

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


" Add the dependecies folder to the path
let s:dependsdir = $HOME . '/vimfiles/depends'
if (has('win32') || has('win64')) && isdirectory(s:dependsdir)
    let $PATH .= ';' . s:dependsdir
endif

"syntax enable


" ~~~~~~~~~~~~ Plugin setttings

" colorscheme settings
set termguicolors
set background=dark
colorscheme neosolarized

" vim-lsp settings
let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
let g:lsp_virtual_text_enabled = 0
let g:lsp_highlight_references_enabled = 1

" ~~~~~~~~~~~ Startup commands
"
" Start in $HOME directory
cd $HOME


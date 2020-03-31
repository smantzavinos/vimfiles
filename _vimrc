
call plug#begin('~/.vim/plugged')

" Git plugin
Plug 'tpope/vim-fugitive'

" Solarized plugin that works well with neovim
Plug 'icymind/neosolarized'

" CoC - Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

call plug#end()

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


" ~~~~~~~~~~~~ Plugin setttings

" colorscheme settings
set termguicolors
set background=dark
colorscheme neosolarized

" ~~ CoC settings
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


"" coc extensions
let g:coc_global_extensions = [
        \'coc-marketplace',
        \'coc-lists',
        \'coc-highlight',
        \'coc-explorer',
        \'coc-json',
        \'coc-tsserver',
        \'coc-svelte',
        \'coc-json',
        \'coc-html',
        \'coc-css'
        \]


"" coc-explorer settings
nnoremap <leader>e :CocCommand explorer<cr>

" ~~~~~~~~~~~ Startup commands
"
" Start in $HOME directory
cd $HOME


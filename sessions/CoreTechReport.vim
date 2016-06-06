" ~\vimfiles\sessions\CoreTechReport.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 03 June 2016 at 10:56:57.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrLtT
silent! set guifont=Consolas
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 CoreTech.tex
badd +1 mystyle.sty
badd +12 tex\PointCloud.tex
badd +1 tex\title.tex
badd +1 tex\mystyle.tex
badd +1 tex\CrossCorr.tex
badd +1 tex\mystyle.sty
badd +1 AnalogicHeader.sty
badd +1 AnalogicHeaderTemplate.sty
badd +1 tex\SagSweepVerify.tex
argglobal
silent! argdel *
set stal=2
edit tex\title.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 31) / 62)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 044|
lcd ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies
tabedit ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies\mystyle.sty
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 33 - ((32 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 040|
lcd ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies
tabedit ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies\AnalogicHeader.sty
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 30 - ((29 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 082|
lcd ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies
tabedit ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies\CoreTech.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((18 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 027|
lcd ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies
tabedit ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies\tex\SagSweepVerify.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 84 - ((31 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
84
normal! 0
lcd ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies
tabedit ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies\tex\PointCloud.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 34 - ((24 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 015|
lcd ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies
tabedit ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies\tex\CrossCorr.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
lcd ~\Documents\Reports\2016_05_26_FusionTech\CoreTechnologies
tabnext 5
set stal=1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 5
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128

" ~\vimfiles\sessions\ANLoader.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 06 June 2016 at 14:09:29.
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
cd ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 dataloader.cpp
badd +30 dataloader.h
badd +1 imageviewer2d.cpp
badd +1 imageviewer2d.h
badd +34 viewer3d.cpp
badd +12 viewer3d.h
badd +7 mainwindow.cpp
badd +50 mainwindow.h
badd +1 image2dgraphicsscene.cpp
badd +0 image2dgraphicsscene.h
badd +1 image2dgraphicsview.cpp
badd +0 image2dgraphicsview.h
argglobal
silent! argdel *
set stal=2
edit mainwindow.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 134 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 134 + 134) / 269)
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
let s:l = 31 - ((30 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 053|
wincmd w
argglobal
edit mainwindow.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 033|
wincmd w
exe 'vert 1resize ' . ((&columns * 134 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 134 + 134) / 269)
tabedit dataloader.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 134 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 134 + 134) / 269)
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
let s:l = 217 - ((32 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
217
normal! 050|
lcd ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader
wincmd w
argglobal
edit ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader\dataloader.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 020|
wincmd w
exe 'vert 1resize ' . ((&columns * 134 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 134 + 134) / 269)
tabedit ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader\imageviewer2d.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 134 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 134 + 134) / 269)
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
let s:l = 355 - ((34 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
355
normal! 030|
wincmd w
argglobal
edit ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader\imageviewer2d.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 107 - ((24 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
107
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 134 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 134 + 134) / 269)
tabedit ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader\image2dgraphicsview.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 135 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 133 + 134) / 269)
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
let s:l = 86 - ((35 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
86
normal! 010|
wincmd w
argglobal
edit ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader\image2dgraphicsview.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 29 - ((28 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 07|
wincmd w
exe 'vert 1resize ' . ((&columns * 135 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 133 + 134) / 269)
tabedit ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader\image2dgraphicsscene.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 135 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 133 + 134) / 269)
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
let s:l = 29 - ((28 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
29
normal! 0
wincmd w
argglobal
edit ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader\image2dgraphicsscene.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 02|
wincmd w
exe 'vert 1resize ' . ((&columns * 135 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 133 + 134) / 269)
tabedit ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader\viewer3d.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 116 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 152 + 134) / 269)
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
let s:l = 1 - ((0 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~\Documents\Code\AccuRev\MMF_Dev\Internal\ANLoader\viewer3d.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 116 + 134) / 269)
exe 'vert 2resize ' . ((&columns * 152 + 134) / 269)
tabnext 3
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
tabnext 3
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

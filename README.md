# vimfiles

## Installation/setup on Windows

1. Clone the repository into $HOME\vimfiles.

2. Set up symlinks to _vimrc, _gvimrc, and .NERDTreeBookmarks files. I did that with the following three commands (executed from an administrator access command prompt in the home folder):
  1. `mklink /H _vimrc vimfiles\_vimrc`
  2. `mklink /H _gvimrc vimfiles\_gvimrc`
  3. `mklink /H .NERDTreeBookmarks vimfiles\.NERDTreeBookmarks`

3. Enjoy!

# vimfiles

## Installation/setup on Windows

1. Clone the repository into $HOME\vimfiles.

2. Set up symlinks to _vimrc, _gvimrc, and .NERDTreeBookmarks files. I did that with the following three commands (executed from an administrator access command prompt in the home folder):
  1. `mklink /H _vimrc vimfiles\_vimrc`
  2. `mklink /H _gvimrc vimfiles\_gvimrc`
  3. `mklink /H .NERDTreeBookmarks vimfiles\.NERDTreeBookmarks`

3. Enjoy!


## Installation/setup on Linux

1. Navigate to home directory:
```
cd ~
```

2. Clone the repository:
```
git clone https://github.com/smantzavinos/vimfiles
```

3. Create a symlink to the vimrc file
```
ln -s vimfiles/_vimrc .vimrc
```

4. Update Vundle (vim package manager), which is saved as a git submodule:
```
cd vimfiles
git submodule init
git submodule update
```
OR
```
cd vimfiles
git submodule update --init
```

5. Install plugins using vundle by launching vim and running `:PluginInstall`.

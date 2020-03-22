# vimfiles

## Installation/setup on Windows using neovim

1. Clone the repository into $HOME\vimfiles.

2. Set up symlink to _vimrc file. I did that with the following three command (executed from an administrator access command prompt in the home folder):
```powershell
mklink /H _vimrc vimfiles\_vimrc
```


3. Make neovim use the correct vimrc. Create or append to file 
```
~\AppData\Local\nvim\init.vim
```
the following lines
```
set runtimepath^=~/vimfiles runtimepath+=~/vimfiles/after
let &packpath = &runtimepath
source ~/vimfiles/_vimrc
```
as described in [Neovim docs](https://neovim.io/doc/user/nvim.html#nvim-from-vim)

4. Install vim-plug plugin manager. Following the neovim install instructions [here](https://github.com/junegunn/vim-plug/blob/0c5f0b0528a8d7b9ced56b8f177e98f0ba4d7153/README.md#neovim), run the following in a PowerShell:
```powershell
md ~\AppData\Local\nvim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\AppData\Local\nvim\autoload\plug.vim"))
```

5. To install plugins, by running vim and executing the command:
```
:PlugInstall
```

## Useful commands

### vim-startify
#### Help
```
:h startify
:h startify-faq
```

#### Commands
```vim
:SLoad       "load a session
:SSave[!]    "save a session
:SDelete[!]  "delete a session
:SClose      "close a session
```


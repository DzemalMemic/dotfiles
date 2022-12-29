# Neovim setup with lua

## Requirements

- Neovim >= v0.6.1


### Installation

#### Ubuntu

- Install neovim version >= v0.6.1. 

To install neovim version v0.7.0 follow steps on the following links:

Download latest [Neovim version](https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-download)
Install latest [Neovim version](https://github.com/neovim/neovim/releases/tag/v0.7.0)

After installation rename neovim appimage to *nvim*:

```bash
mv nvim.appimage nvim
sudo mv nvim /usr/bin
```

#### Arch distributions

```bash
yay -S neovim
```

### Neovim setup

- Clone dotfiles from github: 
```bash 
git clone https://github.com/DzemalMemic/dotfiles.git
``` 
- Create nvim config directory (if it is not already created): 
```bash
mkdir ~/.config/nvim 
```

- Copy init.lua and lua directory to the nvim config directory:

```bash
cp -r dotfiles/luavim/init.lua dotfiles/luavim/lua ~/.config/nvim
```

The content of the nvim directory should be:

```bash
init.lua  lua
```

- Open your nvim editor and insert nvim command:

```bash
:PackerInstall
```

- This command will install all requirements for neovim, and all required plugins.

#### Neovim requirements

To use neovim, you should install python3 and neovim module:

```bash
sudo apt install python3
pip3 install neovim
```

After this, everything should work correctly.


## Neovim keybindings

- Search for file in current directory:

```bash
ctrl + p
```

- Search for content in all files:

```bash
ctrl + g
```

- Multicursor

```bash
Mark your content (visual mode) and press:
ctrl + n (or ctrl + x to skip current word)
```

- Copy in system clipboard

```
Mark content that you want to copy and press:
ctrl + y
```

- To disable arrow keys in neovim (recommended) and to move only with h, j, k and l keys, uncomment the following lines in lua/mappings.lua file:

```bash
map('', '<up>', '<nop>', { noremap = true })
map('', '<down>', '<nop>', { noremap = true })
map('', '<left>', '<nop>', { noremap = true })
map('', '<right>', '<nop>', { noremap = true })
```

- Clang format

```bash
In normal mode press:
ctrl + f
```





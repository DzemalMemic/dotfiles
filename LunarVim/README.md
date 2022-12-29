LunarVim installation
=====================

------------
Requirements
------------

Neovim version >= 0.8.1


---------------------
LunarVim installation
---------------------


Download latest [neovim version](https://github.com/neovim/neovim/releases/tag/stable).
Note: You need to pick specific version of neovim. For example, if you are using Macos, choose macos-neovim, etc.

After downloading tar archive, extract it and move nvim-extracted/bin/nvim to /usr/bin directory.

After you successfully install neovim, execute the following command:


```bash
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

````


On installation you don't need rust and nodejs dependencies.

After installation move lvim to system PATH:

```bash
mv .local/bin/lvim /usr/bin

```

After successful LunarVim installation, open LunarVim with command `lvim`.

Now, we need to do additional configuration.

----------------------
LunarVim configuration
----------------------


- Clone dotfiles from Github: 

```bash 
git clone https://github.com/DzemalMemic/dotfiles.git
```

- Create nvim config directory (if it is not already created): 

```bash
mkdir ~/.config/lvim
```

- Copy config.lua and lua directory to the lvim config directory:

```bash
cp -r dotfiles/LunarVim/config.lua dotfiles/LunarVim/lua ~/.config/lvim
```

The content of the nvim directory should be:

```bash
config.lua  lua
```

- Open your lvim editor and insert lvim command:

```bash
:PackerInstall
```

- This command will install all requirements for lvim, and all required plugins.


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

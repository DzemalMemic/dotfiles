local option = vim.opt
local fn = vim.fn

vim.cmd "set inccommand=split"
option.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
option.updatetime = 300
option.timeoutlen = 400
option.ttimeoutlen = 0
option.backup = false
option.swapfile = true
option.dir = fn.stdpath("data") .. "/swp"
option.undofile = true
option.undodir = fn.stdpath("data") .. "/undodir"
option.history = 1000
--option.clipboard = "unnamedplus" -- system clipboard
option.fileencoding = "utf-8"
option.number = true
option.relativenumber = true
option.cmdheight = 1
option.showmatch = true
option.showtabline = 2
option.laststatus = 2
option.smartcase = true
option.smartindent = true
option.splitbelow = true
option.splitright = true
option.expandtab = true
option.shiftwidth = 2
option.tabstop = 2
option.termguicolors = true
option.cursorline = true
option.scrolloff = 3
option.sidescrolloff = 5
option.hlsearch = true
option.wrap = true
option.ignorecase = true
option.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"
option.fillchars= option.fillchars + 'vert:\\'
option.shortmess = option.shortmess + "c"
option.wildmode = "full"
option.lazyredraw = true
option.completeopt = {"menu", "menuone", "noselect", "noinsert"}
option.wildignorecase = true
option.wildignore = [[
.git,.hg,.svn
*.aux,*.out,*.toc
*.o,*.obj,*.exe,*.class
*.eot,*.otf,*.ttf,*.woff
]]
vim.opt.termguicolors = true

vim.g.tokyonight_colors = {
  bg = "#000000"
}
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.api.nvim_exec([[set guifont=Fira\ Code]], false)
vim.cmd[[colorscheme tokyonight]]

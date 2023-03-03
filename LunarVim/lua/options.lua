
vim.cmd "set inccommand=split"
vim.opt.termguicolors = true

vim.g.tokyonight_colors = {
  bg = "#000000"
}
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.api.nvim_exec([[set guifont=Fira\ Code]], false)
vim.cmd[[colorscheme tokyonight]]

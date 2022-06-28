local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

function get_config(name)
    return string.format("require(\"config/%s\")", name)
end

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        "git", "clone", "https://github.com/wbthomason/packer.nvim",
        install_path
    })
    execute "packadd packer.nvim"
end

local packer = require("packer")
packer.init {
    enable = true,
    threshold = 0
  }
local use = packer.use
packer.reset()

use "wbthomason/packer.nvim"
use {"kyazdani42/nvim-tree.lua", config = get_config("nvim-tree")}
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/nvim-cmp'
use 'vigoux/LanguageTool.nvim'
use {
    "mhartington/formatter.nvim",
    event = "BufWritePre",
    config = get_config("formatter")
}
use {'akinsho/nvim-bufferline.lua', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
--use {
 --   "akinsho/nvim-bufferline.lua",
  --  requires = "kyazdani42/nvim-web-devicons",
--}
use {"neovim/nvim-lspconfig", config = get_config("lsp")}
use 'Mofiqul/dracula.nvim'
use {
  'nvim-lualine/lualine.nvim',
  config = function()
  require('lualine').setup {
    options = {
    icons_enabled = true,
    theme = 'dracula-nvim',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {'filename'},
  lualine_x = {'location'},
  lualine_y = {},
  lualine_z = {}
  },
  tabline = {},
  extensions = {}
  }
  end,
}
use 'williamboman/nvim-lsp-installer'
use 'terryma/vim-multiple-cursors'

use {
  'nvim-telescope/telescope.nvim',
  requires = { 'nvim-lua/popup.nvim',
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope-fzy-native.nvim' }
}
use {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter.configs').setup {
                highlight = {
                    enable = true,
                },
                playground = {
                    enable = true,
                    updatetime = 25,
                },
                context_commentstring = {
                    enable = true,
                },
            }
        end,
    }
use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }
use {'rhysd/vim-clang-format'}
use {'robert-oleynik/clangd-nvim'}
use {'SirVer/ultisnips'}
use {'honza/vim-snippets'}
--use {'nvim-lua/completion-nvim'}
use { 'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim' }
use {'hrsh7th/cmp-buffer'}
use { 'glepnir/galaxyline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
use {'kazhala/close-buffers.nvim'}
use {'folke/tokyonight.nvim'}
use {'hrsh7th/cmp-vsnip'}
use {'hrsh7th/vim-vsnip'}
use {'vim-airline/vim-airline-themes'}
use {'vim-airline/vim-airline'}
--use { 'Rykka/riv.vim' }
--use { 'elmcast/elm-vim' }

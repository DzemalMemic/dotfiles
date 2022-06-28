require("plugins")
require("mappings")
require("options")
require("languageservers");
require 'nv-galaxyline'
require 'nv-lspconfig'
require 'nv-treesitter'
require 'nv-gitsigns'

require("telescope").setup{defaults = { file_ignore_patterns= {
  "*build/.*",
  "compile_commands.json",
  ".*wrap",
  "meson.*"
}}}

require('bufferline').setup {
  options = {
    separator_style = "slant"
  }
}

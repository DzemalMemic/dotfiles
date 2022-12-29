local servers = { 'pyright', 'clangd', 'hls', 'bashls', 'pylsp'}
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    flags = {
      debounce_text_changes = 150,
    }
  }
end

local lsp = require('lspconfig')
local util = require("lspconfig/util")

lsp.pyright.setup({
root_dir = function(fname)
return util.root_pattern(".git", "setup.py", "setup.cfg", "pyproject.toml", "requirements.txt")(fname) or
util.path.dirname(fname)
end
})

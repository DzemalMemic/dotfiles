local map = vim.api.nvim_set_keymap

local default_opts= {noremap = true, silent = true}

map("v", "<", "<gv", default_opts)
map("v", ">", ">gv", default_opts)

-- Buffer switching
map("n", "<esc><tab>", ":bnext<CR>", default_opts)
map("n", "<esc><bs>", ":bprevious<CR>", default_opts)

--map('', '<up>', '<nop>', { noremap = true })
--map('', '<down>', '<nop>', { noremap = true })
--map('', '<left>', '<nop>', { noremap = true })
--map('', '<right>', '<nop>', { noremap = true })
map('v', '<C-y>',':* yank +<CR>',{})
map('v', '<C-Space>',':norm i// <CR>',default_opts)
map('n', '<C-Space>',':norm i// <CR>',default_opts)
map('v', '<C-x>',':norm ^xx <CR>',default_opts)
map('n', '<C-x>',':norm ^xx <CR>',default_opts)
map('n', '<C-f>', ':ClangFormat<CR>', default_opts)

map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>',default_opts)
map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>',default_opts)
map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>',default_opts)
map('n','gr','<cmd>lua vim.lsp.buf.references()<CR>',default_opts)
map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>',default_opts)
map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>',default_opts)
map('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>',default_opts)

-- Telescope
map('n','<C-p>', ':Telescope find_files<CR>',default_opts)
map('n','<C-g>', ':Telescope grep_string<CR>',default_opts)
map('n','<C-b>', ':Telescope buffers<CR>',default_opts)

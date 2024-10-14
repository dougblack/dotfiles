-- Plugins --
require('config.lazy')

-- Leaders --
-- these leaders are set in ~/.config/nvim/lua/config.lazy.lua
-- vim.g.mapleader = ','
-- vim.g.maplocalleader = ','
local map = vim.api.nvim_set_keymap
options = { noremap = true }

map('n', '<leader>ev', ':tab drop ~/.config/nvim/init.lua<cr>', options)
map('n', '<leader>sv', ':luafile ~/.config/nvim/init.lua<cr>', options)
map('n', '<leader>ep', ':tab drop ~/.config/nvim/lua/plugins.lua<cr>', options)
map('n', '<leader>et', ':tab drop ~/.tmux.conf<cr>', options)
map('n', '<leader>h', ':noh<cr>', options)
map('n', 'j', 'gj', options)
map('n', 'k', 'gk', options)
map('n', '<tab>n', ':tab split<cr>', options)
map('n', '<tab>q', ':tabc<cr>', options)
map('n', '<tab>h', ':tabp<cr>', options)
map('n', '<tab>l', ':tabn<cr>', options)
map('n', '<S-M-{>', ':tabn<cr>', options)
map('n', '<leader>\\', ':Neotree<cr>', options)
map('n', '<leader>-\\', ':Neotree reveal<cr>', options)
map('n', '<leader>dd', ':lua vim.diagnostic.enable(false, { bufnr = 0 })<cr>', options)
map('n', '<leader>ed', ':lua vim.diagnostic.enable(true, { bufnr = 0 })<cr>', options)
map('n', '<leader>b', ':BlameToggle window<cr>', options)
map('n', '<leader>ai', ':GpChatNew<cr>', options)
map('n', '<leader>w', ':vsp ~/work.md<cr>', options)
map('n', '<leader>ca', ':lua vim.lsp.buf.code_action({apply=true})<cr>', options)

map('v', '<leader>y', '"+y', options)

map('t', '<S-Space>', ' ', options)
map('t', '<S-Enter>', '<cr>', options)
map('t', '<S-Enter>', '<cr>', options)

-- UI --
vim.opt.number = true
vim.opt.showcmd = true
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.hidden = true
vim.opt.wrapscan = true

-- Indentation --
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

-- Telescope --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>o', builtin.find_files, options)
vim.keymap.set('n', '<leader>s', builtin.live_grep, options)
vim.keymap.set('n', '<leader>fb', builtin.buffers, options)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, options)

-- Toggleterm
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)

-- Colors --
vim.o.background = 'dark' -- or 'light' for light mode
vim.cmd([[colorscheme catppuccin]])

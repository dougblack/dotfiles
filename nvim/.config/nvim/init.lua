vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

vim.opt.number = true

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 250
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.opt.foldenable = true
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"

require("config.lazy")

-- Colors
vim.cmd.colorscheme("catppuccin")

-- Edit Configs
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>ev", ":tabe ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>sv", ":luafile ~/.config/nvim/init.lua<CR>")
vim.keymap.set("n", "<leader>ep", ":tabe ~/.config/nvim/lua/plugins/init.lua<CR>")
vim.keymap.set("n", "<leader>m", ":RenderMarkdown buf_toggle<CR>")

-- Tabs
vim.keymap.set("n", "<leader><tab>h", ":tabp<CR>")
vim.keymap.set("n", "<leader><tab>l", ":tabn<CR>")

-- Notes
vim.keymap.set("n", "<leader>n", ":Neorg workspace notes<CR>")

-- File Explorer
require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Tests
vim.keymap.set("n", "<leader>tf", ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>')
vim.keymap.set("n", "<leader>tt", ':lua require("neotest").run.run()<CR>')
vim.keymap.set("n", "<leader>tr", ':lua require("neotest").summary.toggle()<CR>')

-- Telescope
local builtin = require("telescope.builtin")
local function find_by_ext(glob)
	return function()
		builtin.find_files({ find_command = { "rg", "--files", "--glob", glob } })
	end
end

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fp", find_by_ext("*py"), { desc = "Telescope find Python" })
vim.keymap.set("n", "<leader>fr", find_by_ext("*rs"), { desc = "Telescope find Rust" })
vim.keymap.set("n", "<leader>ft", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Telescope help tags" })

-- Diagnostics
local function diagnostic_toggle(setting)
	return function()
		local new_config = not vim.diagnostic.config()[setting]
		vim.diagnostic.config({ [setting] = new_config })
	end
end
vim.keymap.set("n", "<leader>dd", '<cmd>lua require("telescope.builtin").diagnostics({bufnr=0})<CR>')
vim.keymap.set("n", "<leader>di", diagnostic_toggle("virtual_text"))
vim.keymap.set("n", "<leader>dl", diagnostic_toggle("virtual_lines"))

-- Terminal Mode
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")

-- LSP configs
vim.lsp.set_log_level("off")

require("telescope").setup({
	defaults = {},
	extensions = {},
})

vim.api.nvim_create_autocmd("User", {
	pattern = "TelescopePreviewerLoaded",
	callback = function(args)
		vim.wo.number = true
	end,
})

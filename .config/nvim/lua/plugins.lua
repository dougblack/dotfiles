return {
    { 'elihunter173/dirbuf.nvim' },
    { 'williamboman/mason.nvim' },
    {
        'akinsho/toggleterm.nvim',
        version = '*',
        keys = {
            { '<leader>`h', '<cmd>ToggleTerm size=15 dir=~/code/rr direction=horizontal<cr>', desc = 'horiz term in rr' },
            { '<leader>`v', '<cmd>ToggleTerm size=40 dir=~/code/rr direction=vertical<cr>', desc = 'vert term in rr' },
        },
        config = function()
            require('toggleterm').setup({
                open_mapping = [[`]],
            })
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            require('nvim-treesitter.install').update({ with_sync = true })()
        end,
        config = function ()
            local configs = require('nvim-treesitter.configs')

            configs.setup({
                ensure_installed = {
                    'css',
                    'html',
                    'javascript',
                    'python',
                    'ruby',
                    'vimdoc',
                },
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    {
        'ellisonleao/gruvbox.nvim',
        priority = 1000,
        config = true,
    },
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            local mason = require('mason')
            mason.setup()

            lspconfig.ruff_lsp.setup({})
            lspconfig.svelte.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.marksman.setup({})
            lspconfig.pyright.setup({
                settings = {
                    pyright = {
                        disableOrganizeImports = true,
                    },
                    python = {
                        analysis = {
                            ignore = { '*' }
                        }
                    }
                }
            })
        end,
        dependencies = { 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim' },
        event = {
            'InsertEnter',
        },
    },
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
            'MunifTanjim/nui.nvim',
            -- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    {
        'FabijanZulj/blame.nvim',
        opts = {
            blame_options = { '-w' },
        },
        config = {
            date_format = '%m.%d.%Y'
        }
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true
    },
    {
        'lewis6991/gitsigns.nvim',
        config = {
            signcolumn = true
        }
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },
    {
        'robitx/gp.nvim',
        config = function()
            local conf = {
                providers = {
                    openai = {
                        disable = false,
                        secret = os.getenv('OPENAI_API_KEY')
                    }
                },
                agents = {
                    {
                        provider = 'openai',
                        name = 'ChatGTP4o-mini',
                        chat = true,
                        command = false,
                        model = { model = 'gpt-4o-mini', temperature = 1.1, top_p = 1 },
                        system_prompt = require('gp.defaults').chat_system_prompt

                    }
                }
            }
            require('gp').setup(conf)
        end
    }
}

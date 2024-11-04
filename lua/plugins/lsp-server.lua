return {
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
        },
        config = function()
            local lsp = require('lsp-zero')

            -- Configure Mason
            require('mason').setup()

            -- Configure Mason LSPConfig
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'html',
                    'cssls',
                    'pyright',
                    'rust_analyzer',
                    'ts_ls',
                    'gopls',
                    'eslint', -- Optional: ESLint for JS/TS linting
                },
            })

            -- Use lsp-zero to set up the recommended preset
            lsp.preset('recommended')

            -- Set up nvim-cmp for completion
            lsp.setup_nvim_cmp({
                mapping = {
                    ['<C-n>'] = require('cmp').mapping.select_next_item(),
                    ['<C-p>'] = require('cmp').mapping.select_prev_item(),
                    ['<C-Space>'] = require('cmp').mapping.complete(),
                    ['<CR>'] = require('cmp').mapping.confirm({ select = true }),
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                    { name = 'buffer' },
                    { name = 'path' },
                },
            })

            -- Set up LSP on_attach function
            lsp.on_attach(function(client, bufnr)
                local opts = { noremap=true, silent=true }
                vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
                vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
                -- Optionally add more key mappings here
            end)

            -- Call the setup method to finalize configuration
            lsp.setup()
        end,
    },
}


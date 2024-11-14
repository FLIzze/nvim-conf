return {
    {
        'L3MON4D3/LuaSnip', -- Snippet engine
        config = function()
            local luasnip = require('luasnip')

            luasnip.filetype_extend("javascript", {"html"})
            luasnip.filetype_extend("javascriptreact", {"html"})
            luasnip.filetype_extend("typescriptreact", {"html"})

            -- Load snippets from friendly-snippets
            require('luasnip.loaders.from_vscode').lazy_load()

            -- Keybindings for snippets
            -- vim.api.nvim_set_keymap("i", "<C-k>", "<cmd>lua require('luasnip').expand_or_jump()<CR>", { noremap = true, silent = true })
            -- vim.api.nvim_set_keymap("i", "<C-j>", "<cmd>lua require('luasnip').jump(-1)<CR>", { noremap = true, silent = true })
        end,
    },
    { 'rafamadriz/friendly-snippets' }, -- Snippets collection
}


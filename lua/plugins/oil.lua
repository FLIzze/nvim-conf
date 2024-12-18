return {
    {
        'stevearc/oil.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup {
                keymaps = {
                    ["<C-p>"] = false,
                    ["<C-s>"] = false,
                    ["<C-t>"] = false,
                },
            }

            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "open parent directory" })
            vim.keymap.set("n", "<leader>-", require("oil").toggle_float)
        end
    }
}

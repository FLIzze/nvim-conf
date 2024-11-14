return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            defaults = {
                -- Your default configuration here, if any
            }
        }

        -- Set up key mappings for Telescope
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })

        -- Modify the 'ps' keybinding to only search within Git-tracked files
        vim.keymap.set('n', '<leader>ps', function()
            -- Grep within git-tracked files only
            builtin.grep_string({
                search = vim.fn.input("Grep > "),
                cwd = vim.fn.systemlist('git rev-parse --show-toplevel')[1],  -- Set cwd to the git repo root
            })
        end, { desc = 'Telescope grep Git files' })
    end
}


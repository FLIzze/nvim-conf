return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'debugloop/telescope-undo.nvim' -- Add the undo extension here
  },
  config = function()
    -- Set up Telescope
    require('telescope').setup {
      defaults = {
        -- Your default configuration here, if any
      }
    }

    -- Load the undo extension
    require('telescope').load_extension('undo')

    -- Key mappings
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })

    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({
        search = vim.fn.input("Grep > "),
        cwd = vim.fn.systemlist('git rev-parse --show-toplevel')[1], -- Git repo root
      })
    end, { desc = 'Telescope grep Git files' })
    
    -- Keybinding for undo extension
    vim.keymap.set('n', '<leader>u', function()
      require('telescope').extensions.undo.undo()
    end, { desc = 'Telescope undo' })
  end
}


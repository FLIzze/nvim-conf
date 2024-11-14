return {
  "tpope/vim-fugitive",
  config = function()
    -- Keymaps for git commands with vim-fugitive
    vim.api.nvim_set_keymap('n', '<Leader>gs', ':Git status<CR>', { noremap = true, silent = true })  -- Git status
    vim.api.nvim_set_keymap('n', '<Leader>gc', ':Git commit<CR>', { noremap = true, silent = true })  -- Git commit
    vim.api.nvim_set_keymap('n', '<Leader>gp', ':Git push<CR>', { noremap = true, silent = true })    -- Git push
    vim.api.nvim_set_keymap('n', '<Leader>gl', ':Git log<CR>', { noremap = true, silent = true })     -- Git log
    vim.api.nvim_set_keymap('n', '<Leader>gd', ':Git diff<CR>', { noremap = true, silent = true })    -- Git diff
    vim.api.nvim_set_keymap('n', '<Leader>gf', ':Git fetch<CR>', { noremap = true, silent = true })   -- Git fetch
    vim.api.nvim_set_keymap('n', '<Leader>gr', ':Git rebase<CR>', { noremap = true, silent = true })  -- Git rebase

    -- Git Blame: Show blame info for the current line or the entire file
    vim.api.nvim_set_keymap('n', '<Leader>gb', ':Git blame<CR>', { noremap = true, silent = true })   -- Git blame
  end
}


return {
    "mbbill/undotree",
    config = function()
        vim.keymap.set('n', '<leader>e', vim.cmd.UndotreeToggle)    
    end
}

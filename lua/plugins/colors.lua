function ColorMyPencils(color)
	color = color or 'rose-pine'
	vim.cmd.colorscheme(color)

    -- Set the background to transparent
    vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
    vim.cmd('highlight SignColumn guibg=NONE ctermbg=NONE')
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
	    ColorMyPencils()
    end
  }
}

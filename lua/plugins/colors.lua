function ColorMyPencils(color)
	color = color or 'rose-pine'
	vim.cmd.colorscheme(color)
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

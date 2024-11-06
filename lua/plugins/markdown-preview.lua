return {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",  -- Load only for markdown files
    build = function() vim.fn["mkdp#util#install"]() end
}


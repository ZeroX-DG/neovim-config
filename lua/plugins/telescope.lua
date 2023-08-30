return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
    	    "nvim-telescope/telescope-file-browser.nvim",
        },
	cmd = "Telescope",
        lazy = true,
	config = function()
	    require("telescope").setup({})
	    require("telescope").load_extension("file_browser")
	end,
    }
}

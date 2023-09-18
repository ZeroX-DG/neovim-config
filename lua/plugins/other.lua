return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				transparent_mode = true,
			})
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require'nvim-treesitter.configs'.setup {
				highlight = {
					enable = true
				}
			}
		end
	},
  {
    "m4xshen/autoclose.nvim",
    config = function()
      require("autoclose").setup()
    end
  }
}

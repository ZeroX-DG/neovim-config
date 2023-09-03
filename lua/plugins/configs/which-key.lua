local whichkey = require("which-key")

whichkey.setup({})

-- Set leader
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

-- Set leader-less keymaps
whichkey.register({
    ["<S-x>"] = { "<cmd>bdelete<CR>", "" },
    K = { "<cmd>lua vim.lsp.buf.hover()<CR>", "LSP Hover" },
    g = {
	    name = "+LSP",
	    d = { "<cmd>lua vim.lsp.buf.definition()<CR>zz<CR>", "Jump to Definition" },
	    D = { "<cmd>lua vim.lsp.buf.declaration()<CR>zz<CR>", "Jump to Declaration" },
	    r = { "<cmd>lua vim.lsp.buf.references()<CR>", "List References" },
	    i = { "<cmd>lua vim.lsp.buf.implementation()<CR>zz<CR>", "Jump to Implementation" }
    },
})

-- Set leader keymaps
whichkey.register({
	["<leader>"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
	f = {
		name = "+Find",
		f = { "<cmd>Telescope find_files<CR>", "Find File" },
		b = { "<cmd>Telescope file_browser<CR>", "Browse Files" },
	},
	g = {
		name = "+Git",
		s = { "<cmd>Neogit kind=auto<CR>", "Git status" },
	}
}, { prefix = "<leader>" })

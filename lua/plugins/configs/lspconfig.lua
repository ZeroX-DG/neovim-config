local M = {}

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.on_attach = function(client, bufnr)
	require("which-key").register({
		l = {
			name = "+LSP",
			a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
			d = { "<cmd>Telescope diagnostics<CR>", "Document Diagnostics" },
			s = { "<cmd>Telescope lsp_document_symbols<CR>", "Document Symbols" },
			S = { "<cmd>Telescope lsp_workspace_symbols<CR>", "Workspace Symbols" },
			f = { "<cmd>lua vim.lsp.buf.format()<CR>", "Format" },
			i = { "<cmd>LspInfo<CR>", "Info" },
			r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
			n = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next Error" },
			p = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "Prev Error" },
			l = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Line Diagnostics" },
		}
	}, { prefix = "<leader>", buffer = buffer })
end

return M

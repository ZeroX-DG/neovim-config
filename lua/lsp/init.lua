local M = {
	initialised = false,
}

function M:initialise()
	if self.initialised then
		return
	end
	self.initialised = true

	-- Change border of documentation hover window, See https://github.com/neovim/neovim/pull/13998.
	vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
		border = "rounded",
	})
end

return M

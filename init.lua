--[[
-- Nvimism By Viet Hung.
--]]

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("basic")
require("lazy").setup("plugins")
require("lsp"):initialise()

-- Colorscheme stuff (because the theme need to be installed first)
vim.cmd([[colorscheme gruvbox]])

-- LSP servers
require("lsp.servers")


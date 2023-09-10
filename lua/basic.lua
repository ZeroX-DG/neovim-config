-- Basic configurations

vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false -- Disable show mode because mode is already being shown in lightline
vim.o.termguicolors = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

-- Easier split pane navigation
vim.api.nvim_set_keymap('n', '<c-k>', ':wincmd k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-j>', ':wincmd j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<c-l>', ':wincmd l<CR>', { noremap = true, silent = true })


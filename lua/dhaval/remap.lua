vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ef", vim.cmd.Ex)
vim.keymap.set("n", "<leader>d", "dd")

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv")


vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<C-k>", vim.lsp.buf.hover, opts)
vim.keymap.set("i", "<C-k>", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)

vim.keymap.set('n', '<leader>=', function() vim.lsp.buf.format() end)

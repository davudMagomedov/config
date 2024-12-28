vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")

vim.keymap.set({"n", "v"}, "<c-d>", "<c-d>zz")
vim.keymap.set({"n", "v"}, "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set({"n", "v"}, "<C-m>", "10l")
vim.keymap.set({"n", "v"}, "<C-n>", "10h")

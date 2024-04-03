-- vim.keymap.set mode, shortcut, action, config
local opts = { noremap = true, silent = true }

vim.keymap.set("i", "jj", "<ESC>", opts)
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", opts)

vim.keymap.set("n", "<leader>q", ":q!<CR>", opts)
vim.keymap.set("n", "<leader>w", ":w!<CR>", opts)
vim.keymap.set("n", "<leader>wq", ":wq!<CR>", opts)

-- Clear search highlight
vim.keymap.set("n", "<esc>", ":noh<return><esc>", opts)

-- Indentations
vim.keymap.set("v", ">", ">gv", { silent = true })
vim.keymap.set("v", "<", "<gv", { silent = true })


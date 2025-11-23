local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>fq", ":q<CR>", opts)
keymap.set("n", "<leader>fw", ":w<CR>", opts)
keymap.set("n", "<leader>fwq", ":wq!<CR>", opts)

keymap.set("n", "<leader>kp", require("kubectl").list_pods, { desc = "List Kubernetes Pods" })

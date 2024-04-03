local builtin = require("telescope.builtin")
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
builtin.project_files = function()
  local opts = {
    show_untracked = true,
  } -- define here if you want to define something
  vim.fn.system("git rev-parse --is-inside-work-tree")
  if vim.v.shell_error == 0 then
    builtin.git_files(opts)
  else
    builtin.find_files(opts)
  end
end

keymap.set("n", "<C-p>", builtin.project_files, opts)
keymap.set("n", "<leader>f", function()
  local search_term = vim.fn.inputdialog("Search: ")
  if search_term ~= "" then
    builtin.grep_string({ search = search_term })
  end
end, opts)
keymap.set("n","<leader>gb" , builtin.git_branches , opts)
keymap.set("n","<leader>gc" , builtin.git_commits , opts)
keymap.set("n","<leader>gs" , builtin.git_status , opts)
keymap.set("n","<leader>gf" , builtin.git_files , opts)

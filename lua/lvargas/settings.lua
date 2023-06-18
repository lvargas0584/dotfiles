local opt = vim.opt

opt.number = true

vim.g.mapleader = "/"

opt.termguicolors = true
opt.hidden = true

opt.number = true

-- Indentation
opt.expandtab = true
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smartindent = true

opt.wrap = false

-- highlight matching parenthesis
opt.showmatch = true

-- set case insensitive searching
opt.ignorecase = true
-- case sensitive searching when not all lowercase
opt.smartcase = true
-- Live replacing using %s/text/newText
opt.inccommand = "split"

opt.mouse = "a"

opt.backup = false
opt.errorbells = false
opt.swapfile = false

-- Always show signcolumns
opt.signcolumn = "yes"

-- use native clipboard
opt.clipboard = "unnamedplus"
vim.api.nvim_set_option("clipboard","unnamedplus")

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

require("lazy").setup({
  "nvim-tree/nvim-web-devicons",
 { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
 { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
 { "nvim-tree/nvim-tree.lua", tag = "nightly"}
})

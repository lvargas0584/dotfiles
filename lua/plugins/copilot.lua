return {
  "github/copilot.vim",
  lazy = false,
  config = function()
    vim.g.copilot_suggestion_hidden = 1
    -- vim.api.nvim_set_keymap('i', '<C-j>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
  end,
}

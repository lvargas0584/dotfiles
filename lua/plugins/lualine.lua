return {
  "nvim-lualine/lualine.nvim",
  optional = true,
  event = "VeryLazy",
  opts = function(_, opts)
    opts.sections.lualine_c = {
      {
        "filename",
        path = 1,
      },
    }

    opts.sections.lualine_x = {
      {
        "kulala",
        cond = function()
          return vim.bo.filetype == "http"
        end,
      },
    }
  end,
}

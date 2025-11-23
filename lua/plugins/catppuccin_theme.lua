return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    auto_integrations = true,
    lazy = false, -- Esto fuerza la carga del plugin al inicio
    opts = {
      flavour = "mocha", -- Cambia esto por tu sabor preferido
      integrations = { -- Integraciones con otros plugins
        alpha = true,
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        which_key = true,
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get_theme()
          end
        end,
      },
    },
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "catppuccin",
  --   },
  -- },
}

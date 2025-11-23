return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")
    local trouble = require("trouble.providers.telescope")
    local builtin = require("telescope.builtin")
    telescope.setup({
      defaults = {
        theme = "ivy",
        file_ignore_patterns = {
          ".idea/",
          ".venv/",
          "target/",
          "__pycache__",
          "*.pyc",
        },
        path_display = { "filename_first" },
        mappings = {
          i = {
            ["<c-t>"] = trouble.open,
          },
        },
      },
      pickers = {
        find_files = {
          theme = "ivy",
        },
        buffers = {
          theme = "dropdown",
        },
      },
    })
  end,
}

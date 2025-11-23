return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    config = function()
      local bundles = vim.fn.glob("/home/leonardo-vargas/.config/nvim/java-test/*.jar", 1, 1)
      local function setup_jdtls()
        local jdtls = require("jdtls")
        local root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" })
        local config = {
          cmd = { "/home/leonardo-vargas/.local/share/nvim/mason/bin/jdtls" },
          root_dir = root_dir,
          init_options = {
            bundles = bundles,
          },
          settings = {
            java = {
              codeLens = { enabled = true },
            },
          },
          -- Add other settings if needed
        }
        jdtls.start_or_attach(config)
        -- jdtls.setup_dap({
        --   hotcodereplace = "auto",
        --   config_overrides = {
        --     port = 5005,
        --   },
        -- })
      end

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "java",
        callback = function()
          setup_jdtls()
        end,
      })

      local function set_jdtls_keymaps(bufnr)
        vim.keymap.set("n", "<leader>jt", function()
          require("jdtls").test_class()
        end, { desc = "Run Java Test Class", buffer = bufnr })

        vim.keymap.set("n", "<leader>jn", function()
          require("jdtls").test_nearest_method()
        end, { desc = "Run Nearest Java Test", buffer = bufnr })

        vim.keymap.set("n", "<leader>jo", function()
          require("jdtls").organize_imports()
        end, { desc = "Organize Imports", buffer = bufnr })
      end

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.name == "jdtls" then
            set_jdtls_keymaps(args.buf)
          end
        end,
      })

      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
        pattern = "*.java",
        callback = function()
          vim.lsp.codelens.refresh()
        end,
      })
    end,
  },
}

return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    -- Java Debug Adapter configuration
    -- dap.adapters.java = function(callback, config)
    --   callback({
    --     type = "server",
    --     host = "127.0.0.1",
    --     port = 5005, -- Default port for Java debug server
    --   })
    -- end
    --
    -- dap.configurations.java = {
    --   {
    --     type = "java",
    --     request = "launch",
    --     name = "Launch Java Program",
    --     mainClass = function()
    --       return vim.fn.input("Main class > ")
    --     end,
    --     projectName = function()
    --       return vim.fn.input("Project name (optional) > ")
    --     end,
    --     cwd = vim.fn.getcwd(),
    --     args = function()
    --       local input = vim.fn.input("Program arguments > ")
    --       return input ~= "" and vim.split(input, " ") or {}
    --     end,
    --     console = "integratedTerminal",
    --   },
    -- }

    -- Keymaps for DAP controls
    -- vim.keymap.set("n", "<F5>", function()
    --   dap.continue()
    -- end, { desc = "DAP Continue" })
    -- vim.keymap.set("n", "<F10>", function()
    --   dap.step_over()
    -- end, { desc = "DAP Step Over" })
    -- vim.keymap.set("n", "<F11>", function()
    --   require("dap").step_into()
    -- end, { desc = "DAP Step Into" })
    -- vim.keymap.set("n", "<F12>", function()
    --   dap.step_out()
    -- end, { desc = "DAP Step Out" })
    -- vim.keymap.set("n", "<leader>db", function()
    --   dap.toggle_breakpoint()
    -- end, { desc = "DAP Toggle Breakpoint" })
    -- vim.keymap.set("n", "<leader>dr", function()
    --   dap.repl.open()
    -- end, { desc = "DAP Open REPL" })
  end,
}

-- ~/.config/nvim/lua/plugins/python.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                -- Esto permite que pyright detecte automáticamente el entorno
                -- virtual si el directorio .venv existe en la raíz del proyecto.
                -- Si tu entorno virtual tiene otro nombre, cambia .venv
                -- a ese nombre.
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
              },
            },
          },
        },
      },
    },
  },
}

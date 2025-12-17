return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        init_options = {
          settings = {
            configuration = {
              lint = {
                ignore = { "F405", "F403" },
              },
            },
          },
        },
      },
    },
  },
}

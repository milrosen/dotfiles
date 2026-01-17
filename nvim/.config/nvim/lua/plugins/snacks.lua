return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            -- Set auto_close to true
            auto_close = true,
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true
          }
        },
      },
    },
  },
}

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_set_hl(0, 'AvanteSidebarNormal', { link = 'NormalFloat' })
vim.api.nvim_set_hl(0, 'AvanteSidebarWinSeparator', { link = 'NormalFloat'})
vim.api.nvim_set_hl(0, 'AvanteSidebarWinHorizontalSeparator', { bg = "#2e3440" })
vim.api.nvim_set_hl(0, 'AvanteReversedTitle', { bg = "#2e3440", fg="#98c379" })
vim.api.nvim_set_hl(0, 'AvanteReversedThirdTitle', { bg = "#2e3440", fg = "#353b45" })
vim.api.nvim_set_hl(0, 'AvanteReversedSubtitle', { bg = "#2e3440", fg= "#56b6c2" })
vim.api.nvim_set_hl(0, 'AvantePromptInput', { link = 'NormalFloat' })

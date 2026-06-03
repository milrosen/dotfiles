-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
--

local avante_ns = vim.api.nvim_create_namespace('avante_title_fix')
local avante_aug = vim.api.nvim_create_augroup('AvanteTitleFix', { clear = true})

vim.api.nvim_set_hl(avante_ns, "Title", { bg = "#2e3440", fg = "#a4be8d" })

vim.api.nvim_create_autocmd("BufEnter", {
  group = avante_aug,
  pattern = "*",
  callback = function() 
    vim.schedule(function()
      local buf = vim.api.nvim_get_current_buf()
      local ft = vim.api.nvim_buf_get_option(buf, "filetype")

      if ft:match("AvantePromptInput") then 
        local winid = vim.api.nvim_get_current_win()
        vim.api.nvim_win_set_hl_ns(winid, avante_ns)
      end
    end)
  end,
})

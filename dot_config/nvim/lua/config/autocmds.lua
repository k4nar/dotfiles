-- Autocmds are automatically loaded on the VeryLazy event
-- In LayzVim, default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- autogroups are used to namespace autocmds
local group = vim.api.nvim_create_augroup("user_autocmd", { clear = true })

-- Set the current directory when neovim is opened for a specific file or directory
vim.api.nvim_create_autocmd("VimEnter", {
  group = group,
  pattern = "*",
  callback = function()
    vim.api.nvim_set_current_dir(vim.fn.expand("%:p:h"))
  end,
})

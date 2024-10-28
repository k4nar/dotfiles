if not vim.g.vscode then
  return {}
end

return {
  -- Basic settings. Used in VSCode instead of LazyVim's basic settings.
  -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-basics.md
  {
    "echasnovski/mini.basics",
    version = false,
    opts = {},
  },
}

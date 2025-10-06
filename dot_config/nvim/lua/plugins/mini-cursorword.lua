return {
  -- Highlight word under the the cursor
  -- https://github.com/nvim-mini/mini.nvim/blob/main/readmes/mini-cursorword.md
  {
    "nvim-mini/mini.cursorword",
    version = false,
    -- disable it in VSCode, as it's supported natively
    cond = (not vim.g.vscode)
  },
}

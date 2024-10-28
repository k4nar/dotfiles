return {
  -- Highlight word under the the cursor
  -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-cursorword.md
  {
    "echasnovski/mini.cursorword",
    version = false,
    -- disable it in VSCode, as it's supported natively
    cond = (not vim.g.vscode)
  },
}

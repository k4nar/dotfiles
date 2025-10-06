return {
  -- Auto pairs parens, quotes, etc…
  {
    "nvim-mini/mini.pairs",
    -- disable it in VSCode, as it's supported natively
    cond = not vim.g.vscode,
  },
}

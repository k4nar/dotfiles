-- Configure nvim-treesitter for VSCode
-- (LazyVim comes with its own defaults)
if not vim.g.vscode then
  return {}
end

return {
  -- Required by some plugins (eg: mini-ai or flash)
  -- inspired by lazyvim.plugins.treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    -- LazyFile is specific to lazyvim.plugins, which we don't want
    -- event = { "LazyFile", "VeryLazy" },
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter-textobjects",
      },
    },
    opts = {
      -- disable syntax highlighting in VSCode
      highlight = { enable = false },
      indent = { enable = true },
      -- in VSCode, the builtin incremental selection is better
      -- alternative:
      -- - mini-ai: vif, vaf, vic, etc…
      -- - flash: gi
      incremental_selection = { enable = false },
      additional_vim_regex_highlighting = false,
    },
  },
}

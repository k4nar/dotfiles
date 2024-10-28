return {
  -- Display indent hints, and provide shortcuts related to current indentation
  -- (ai, ii, (i, etc…)
  -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-indentscope.md
  {
    "echasnovski/mini.indentscope",
    version = false,
    event = 'VeryLazy',
    opts = {
      indent_at_cursor = true,
      try_as_border = true,
    },
    config = function(_, opts)
      -- disable drawing in vscode
      vim.g.miniindentscope_disable = vim.g.vscode
      require('mini.indentscope').setup(opts)
    end
  },
}
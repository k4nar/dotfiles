return {
  -- Move forward / backward with ( )
  -- Example:
  --   `)x` for next conflict
  -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-bracketed.md
  {
    "echasnovski/mini.bracketed",
    version = false,
    opts = {
      -- disable (i, in favor of indentscope
      indent = { suffix = '' },
    }
  },
}

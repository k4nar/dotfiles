-- Allow to substitute text with `s`, instead using a temporary ring.
-- Examples:
--   - `ss` to replace the current line with the yanked text
--   - `siw` to replace the current word
--   - `s` in visual mode
return {
  {
    "gbprod/substitute.nvim",
    event = "VeryLazy",
    config = function(_, opts)
      local substitute = require("substitute")
      vim.keymap.set("n", "s", substitute.operator)
      vim.keymap.set("n", "ss", substitute.line)
      vim.keymap.set("n", "S", substitute.eol)
      vim.keymap.set("x", "s", substitute.visual)
      substitute.setup(opts)
    end,
  },
}

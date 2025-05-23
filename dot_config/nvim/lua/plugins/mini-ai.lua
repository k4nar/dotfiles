return {
  -- Better text-objects (like `daa`, `cia`, `vaf`, `vic`…)
  -- https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-ai.md
  {
    "echasnovski/mini.ai",
    version = false,
    -- keys = {
    --   { "a", mode = { "x", "o" } },
    --   { "i", mode = { "x", "o" } },
    -- },
    event = "VeryLazy",
    dependencies = { "nvim-treesitter-textobjects" },
    opts = function()
      local ai = require("mini.ai")
      return {
        n_lines = 500,
        search_method = "cover_or_nearest",
        custom_textobjects = {
          -- `e` a word in a CamelCase or snake_case string
          e = { 
            { "%u[%l%d]+%f[^%l%d]", "%f[%S][%l%d]+%f[^%l%d]", "%f[%P][%l%d]+%f[^%l%d]", "^[%l%d]+%f[^%l%d]" },
            "^().*()$",
          },
          -- `o` for blocks
          o = ai.gen_spec.treesitter({
            a = { "@block.outer", "@conditional.outer", "@loop.outer" },
            i = { "@block.inner", "@conditional.inner", "@loop.inner" },
          }, {}),
          -- `f` for functions
          f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),
          -- `c` for classes
          c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),
          -- `u` (usage) for function calls
          u = ai.gen_spec.function_call(),
          -- `g` for whole buffer
          g = function()
            local from = { line = 1, col = 1 }
            local to = {
              line = vim.fn.line("$"),
              col = math.max(vim.fn.getline("$"):len(), 1),
            }
            return { from = from, to = to }
          end,
        },
      }
    end,
  },
}

return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        -- disable flash for f, F, t, T motions
        char = { enabled = true, jump_labels = false },
        -- disable flash for regular search
        search = { enabled = false },
      },
    },
    keys = {
      { "s", false },
      {
        "j",
        mode = { "n", "o", "x" },
        function()
          require("flash").jump()
        end,
        desc = "flash",
      },
      -- <space>j to jump to a treesitter label
      {
        "<space>j",
        mode = { "n" },
        function()
          require("flash").treesitter({ jump = { pos = "start" }, label = { before = true, after = false } })
        end,
        desc = "flash treesitter search",
      },
      {
        "gi",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "flash treesitter search",
      },
      -- eg: 'yr' to start yanking, go to pos, and finish motion ('iw' for example)
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "remote flash",
      },
      -- <operator>J to perform operation on a treesitter object
      {
        "J",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "flash treesitter search",
      },
      {
        "<c-/>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "toggle flash search",
      },
    },
  },
}

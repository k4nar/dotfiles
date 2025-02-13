return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        -- disable flash for f, F, t, T motions
        char = { enabled = false },
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
      {
        "gi",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "flash treesitter",
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

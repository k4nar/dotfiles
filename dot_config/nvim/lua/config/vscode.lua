-- Config for when Neovim is used in VSCode
-- Use lazy.nvim as a plugin manager, but not the LazyVim setup as most of it is already handled by VSCode

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Use space as leader key
vim.g.mapleader = " "

local lazy = require("lazy")

-- disable colorscheme
vim.g.colors_name = "vscode"

lazy.setup({
  spec = {
    { import = "plugins" },
  },

  -- disable auto-update (launch nvim directly to update instead)
  checker = { enabled = false },

  -- disable detection of config file change
  change_detection = { enabled = false },

  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- import keymaps, options & autocmds
require("config.keymaps")
require("config.options")
require("config.autocmds")

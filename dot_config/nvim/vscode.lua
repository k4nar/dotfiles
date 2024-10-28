-- allow to launch Neovim like if it was in vscode (eg: from the cli to install/update plugins)
-- Usage: nvim -u ~/.config/nvim/vscode.lua
vim.g.vscode = true

require("config.vscode")

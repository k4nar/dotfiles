-- Keymaps are automatically loaded on the VeryLazy event
-- In LazyVim, default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set

-- Files
if vim.g.vscode then
  map({ "n", "x" }, "<leader>s", "<cmd>call VSCodeNotify('workbench.action.files.save')<cr>", { desc = "Save" })
  map({ "n", "x" }, "<leader>f", "<cmd>Edit<cr>", { desc = "Open" })
  map({ "n", "x" }, "<leader><space>", "<cmd>Edit<cr>", { desc = "Open" })
else
  map({ "n", "x" }, "<leader>s", "<cmd>w<cr>", { desc = "Save" })
  map({ "n", "x" }, "<leader>f", "<cmd>Telescope find_files<cr>", { desc = "Open" })
end

-- Buffers
if vim.g.vscode then
  map({ "n", "x" }, "<Leader>l", "<cmd>call VSCodeNotify('workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup')<cr>", { desc = "Previous buffer" })
  map({ "n", "x" }, "<leader>c", "<cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<cr>", { desc = "Close current buffer" })
  map({ "n", "x" }, "<leader>C", "<cmd>call VSCodeNotify('workbench.action.closeOtherEditors')<cr>", { desc = "Close current buffer" })
  map({ "n", "x" }, "<leader>q", "<cmd>call VSCodeNotify('workbench.action.closeEditorsAndGroup')<cr>", { desc = "Close current buffer and window" })
else
  map({ "n", "x" }, "<Leader>l", "<C-^>", { desc = "Previous buffer" })
  map({ "n", "x" }, "<leader>c", ":bd<cr>", { desc = "Close current buffer" })
  map({ "n", "x" }, "<leader>q", ":q<cr>", { desc = "Close current buffer and window" })
end

-- Split
if vim.g.vscode then
  map({ "n", "x" }, "<leader>|", "<cmd>call  VSCodeNotify('workbench.action.splitEditor')<cr>", { desc = "Split vertically" })
  map({ "n", "x" }, "<leader>-", "<cmd>call  VSCodeNotify('workbench.action.splitEditorUp')<cr>", { desc = "Split horizontally" })
end

-- Editor
-- allow to use ctrl+v in insert mode
map("i", "<C-v>", "<C-r>+", { silent = true })

-- Remap ( ) to prev / next
map({ "n", "x", "o" }, "(", "[", { remap = true })
map({ "n", "x", "o" }, ")", "]", { remap = true })

-- Clear search results with enter
map("n", "<CR>", ":noh<cr>", { silent = true })

-- & search word under cursor, but without moving
map("n", "&", "*N", { silent = true })

-- Remap commands to use VSCode actions
if vim.g.vscode then
  map({ "n", "x" }, "<leader>p", "<cmd>call VSCodeNotify('workbench.action.showCommands')<cr>", { desc = "" })
  map({ "n", "x" }, "<leader>/", "<cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>", { desc = "" })

  -- Undo / redo
  map({ "n", "x" }, "u", "<cmd>call VSCodeNotify('undo')<cr>")
  map({ "n", "x" }, "<C-r>", "<cmd>call VSCodeNotify('redo')<cr>")

  -- Search
  map({ "n", "x" }, "<Leader>/", "<cmd>call VSCodeNotify('workbench.action.findInFiles')<cr>", { desc = "Search" })
  map("n", "gf", "<cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>", { desc = "Find current word in files" })

  -- )n (n to navigate search results
  map({ "n", "x", "o" }, "[n", "<cmd>call VSCodeNotify('search.action.focusPreviousSearchResult')<cr>")
  map({ "n", "x", "o" }, "]n", "<cmd>call VSCodeNotify('search.action.focusNextSearchResult')<cr>")

  -- IntelliCode
  map("n", "<Leader>d", "<cmd>call VSCodeNotify('editor.action.revealDefinition')<cr>")
  map("n", "<Leader>D", "<cmd>call VSCodeNotify('editor.action.peekDefinition')<cr>")

  -- Navigation
  map({ "n", "x" }, "<Leader>r", "<cmd>call VSCodeNotify('workbench.action.navigateBack')<cr>", { desc = "" })
  map({ "n", "x" }, "<Leader>i", "<cmd>call VSCodeNotify('workbench.action.navigateForward')<cr>", { desc = "" })

  -- Git
  map({ "n", "x" }, "ga", "<cmd>call VSCodeNotify('git.stageSelectedRanges')<cr>", { desc = "" })
  map({ "n", "x" }, "gu", "<cmd>call VSCodeNotify('git.unstageSelectedRanges')<cr>", { desc = "" })
  map({ "n", "x" }, "gn", "<cmd>call VSCodeNotify('workbench.action.editor.nextChange')<cr>", { desc = "" })
  map({ "n", "x" }, "gp", "<cmd>call VSCodeNotify('workbench.action.editor.previousChange')<cr>", { desc = "" })
  map("n", "gA", "<cmd>call VSCodeNotify('git.stage')<cr>", { desc = "" })
  map("n", "gC", "<cmd>call VSCodeNotify('git.checkout')<cr>", { desc = "" })
  map("n", "gP", "<cmd>call VSCodeNotify('git.pull')<cr>", { desc = "" })

  -- Comment lines
  map({ "n", "x" }, "gc", "<Plug>VSCodeCommentary")
  map("n", "gcc", "<Plug>VSCodeCommentaryLine")
end

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Add any additional keymaps here
vim.keymap.set("n", "<C-S-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<C-S-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<C-S-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<C-S-k>", "<esc><cmd>m .-2<cr>==giv", { desc = "Move Up" })
vim.keymap.set("v", "<C-S-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<C-S-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
-- codeium
-- https://github.com/Exafunction/codeium.vim?tab=readme-ov-file
return {
  "Exafunction/codeium.vim",
  config = function()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-;>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-,>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })
    vim.keymap.set("<leader>to", "<cmd>tabnew<CR>", function()
      return vim.fn["Open new tab"]()
    end, { expr = true, silent = true })
    vim.keymap.set("<leader>tx", "<cmd>tabclose<CR>", function()
      return vim.fn["Close new tab"]()
    end, { expr = true, silent = true })
    vim.keymap.set("<leader>tn", "<cmd>tabn<CR>", function()
      return vim.fn["Goto next tab"]()
    end, { expr = true, silent = true })
    vim.keymap.set("<leader>tp", "<cmd>tabp<CR>", function()
      return vim.fn["Goto previous tab"]()
    end, { expr = true, silent = true })
    vim.keymap.set("<leader>tf", "<cmd>tabnew %<CR>", function()
      return vim.fn["Open current buffer in new tab"]()
    end, { expr = true, silent = true })
  end,
}

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- terminal

-- 在终端模式下，按 Esc 可以进入 Normal 模式
map("t", "<Esc>", "<C-\\><C-n>", { desc = "change terminal mode to normal mode" })

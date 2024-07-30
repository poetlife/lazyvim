-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local function paste()
  return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
end

vim.g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
    ["*"] = require("vim.ui.clipboard.osc52").copy("+"),
  },
  paste = { ["+"] = paste, ["*"] = paste },
}

-- 设置拷贝默认使用的寄存器为 *
-- 可以通过 :echo &clipboard 来查看使用的寄存器
vim.o.clipboard = "unnamedplus"


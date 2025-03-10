return {
  -- 配置gitsigns
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true, -- git blame当前行
      current_line_blame_opts = {
        delay = 100,
      },
    },
  },
  -- 配置 trouble
  {
    "folke/trouble.nvim",
    opts = {
      focus = true, -- 打开就自动聚焦
      win = {
        position = "right",
        size = { -- 调整对应的位置
          width = 0.3,
          height = 1,
        },
      },
    },
  },
  -- 配置lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      codelens = {
        enabled = true,
      },
    },
  },
  -- 配置 neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false, -- https://github.com/nvim-neo-tree/neo-tree.nvim/issues/1699 目前惰加载会有点问题，先这样处理
    opts = {},
  },
}

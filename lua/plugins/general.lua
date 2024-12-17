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
}

return {
  -- telescope.nvim 配置
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>ss",
        function()
          require("telescope.builtin").lsp_document_symbols({
            symbols = LazyVim.config.get_kind_filter(),
            -- 设置 symbols 的宽度为 50
            symbol_width = 50,
          })
        end,
        desc = "Goto symbols",
      },
    },
  },
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

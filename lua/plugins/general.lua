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
}

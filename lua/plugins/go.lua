return {
  {
    "stevearc/conform.nvim",
    enable = false,
  },
  -- null-ls
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = {
          ensure_installed = { "golangci-lint" },
        },
      },
    },
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- golangci-lint
          nls.builtins.diagnostics.golangci_lint,
          -- goimports
          nls.builtins.formatting.goimports,
          -- auto impl interface
          nls.builtins.code_actions.impl,
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              buildFlags = { "-tags=wireinject" },
              analyses = {
                -- 关闭fieldalignment分析
                fieldalignment = false,
              },
              usePlaceholders = false, -- 禁用参数填充
            },
          },
        },
      },
    },
  },
}

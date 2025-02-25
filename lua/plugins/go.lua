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
                fieldalignment = false, -- 关闭fieldalignment分析
                unusedparams = true, -- 新增未使用参数检查
                unreachable = true, -- 不可达代码检查
                nilness = true, -- nil 检查
                unusedwrite = true, -- 未使用的写入检查
              },
              -- inlay hints, can be setted by <space>uh
              hints = {
                -- 提示函数参数的类型
                functionTypeParameters = true,
                parameterNames = true,
                assignVariableTypes = true, -- 变量类型提示
                compositeLiteralFields = true, -- 结构体字段提示
                constantValues = true, -- 常量值提示
              },
              usePlaceholders = false, -- 禁用参数填充
              semanticTokens = true, -- 语义高亮
            },
          },
        },
      },
    },
  },
}

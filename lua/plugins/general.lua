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
  -- 配置 fzf-lua
  {
    "ibhagwan/fzf-lua",
    keys = function(_, keys)
      keys = keys or {}
      keys[#keys + 1] = {
        "<leader>se",
        function()
          require("fzf-lua").grep_curbuf({
            search = [[^\s*export\b]],
            no_esc = true,
          })
        end,
        ft = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
        desc = "Goto Exported Symbol",
      }
      return keys
    end,
  },
  -- 扩展 kind_filter，让 <leader>ss 显示更多符号类型
  -- LSP SymbolKind 完整列表（vim.lsp.protocol.SymbolKind）：
  --  1=File, 2=Module, 3=Namespace, 4=Package, 5=Class, 6=Method,
  --  7=Property, 8=Field, 9=Constructor, 10=Enum, 11=Interface,
  --  12=Function, 13=Variable, 14=Constant, 15=String, 16=Number,
  --  17=Boolean, 18=Array, 19=Object, 20=Key, 21=Null,
  --  22=EnumMember, 23=Struct, 24=Event, 25=Operator, 26=TypeParameter
  -- 注：TypeScript 的 type alias 在 LSP 中被报告为 Variable
  {
    "LazyVim/LazyVim",
    opts = {
      kind_filter = {
        default = {
          "Class",
          "Constructor",
          "Enum",
          "Field",
          "Function",
          "Interface",
          "Method",
          "Module",
          "Namespace",
          "Package",
          "Property",
          "Struct",
          "Trait",
          "Variable", -- 包含 typescript type alias
          -- "Constant",
          -- "File",
          -- "String",
          -- "Number",
          -- "Boolean",
          -- "Array",
          -- "Object",
          -- "Key",
          -- "Null",
          -- "EnumMember",
          -- "Event",
          -- "Operator",
          -- "TypeParameter",
        },
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

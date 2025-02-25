-- blink.cmp configuration
return {
  {
    -- add blink.compat
    "saghen/blink.compat",
    -- use the latest release, via version = '*', if you also use the latest release for blink.cmp
    version = "*",
    -- lazy.nvim will automatically load the plugin when it's required by blink.cmp
    lazy = true,
    -- make sure to set opts so that lazy.nvim calls blink.compat's setup
    opts = {},
  },
  { -- blink config, for detail: https://cmp.saghen.dev/configuration/general.html
    "saghen/blink.cmp",

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      sources = {
        -- adding any nvim-cmp sources here will enable them
        -- with blink.compat
        compat = { "avante_commands" }, -- for detail, see ./ai.lua
        default = { "lsp", "path", "snippets", "buffer" },
        providers = {
          avante_commands = {
            name = "avante_commands",
            module = "blink.compat.source",
            -- 默认情况下就会去找nvim-cmp/avante_commands源
            score_offset = 90, -- show at a higher priority than lsp
            opts = {},
          },
        },
      },
    },
  },
}

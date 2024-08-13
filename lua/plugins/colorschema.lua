return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      opts = {
        integrations = {
          cmp = true,
        },
        transparent_background = false,
        custom_highlights = function(colors)
          return {
            Comment = { fg = colors.flamingo },
            Pmenu = { bg = colors.none },
          }
        end,
      },
    },
  },
}

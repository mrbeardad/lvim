return {
  -- hl: check system theme
  {
    "vimpostor/vim-lumen",
    priority = 1000,
  },

  -- hl: colorscheme
  {
    "folke/tokyonight.nvim",
    opts = {
      dim_inactive = true,
      styles = {
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "normal", -- style for floating windows
      },
      on_highlights = function(hl, c)
        -- Set the dark theme colors, and tokyonight will invert the colors for light theme automatically
        local lighten = require("tokyonight.util").lighten
        local darken = require("tokyonight.util").darken
        hl.YankyPut = {
          link = "Search",
        }
        hl.YankyYanked = {
          link = "Search",
        }
        hl.ScrollbarHandle = {
          bg = lighten(hl.ScrollbarHandle.bg, 0.9),
        }
        hl.FlashLabel = {
          fg = lighten(hl.FlashLabel.fg, 0.1),
          bg = hl.FlashLabel.bg,
          bold = true,
          italic = true,
        }
        hl.FlashLabelUnselected = {
          fg = darken(hl.FlashLabel.fg, 0.8),
          bg = darken(hl.FlashLabel.bg, 0.8),
          bold = true,
          italic = true,
        }
        hl.MatchParen = {
          fg = hl.MatchParen.fg,
          bg = hl.IlluminatedWordText.bg,
          bold = true,
          italic = true,
        }
      end,
    },
  },
}

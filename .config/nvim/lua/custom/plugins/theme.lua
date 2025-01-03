return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      -- Main options
      flavour = 'mocha', -- Available: latte, frappe, macchiato, mocha
      background = {
        light = 'latte',
        dark = 'mocha',
      },
      custom_highlights = function(colors)
        return {
          -- Normal mode
          ModeMsg = { fg = colors.green },
          -- Insert mode
          MsgArea = { fg = colors.blue },
          -- Visual mode
          Visual = { bg = colors.surface2, fg = colors.lavender },
          -- Replace mode
          IncSearch = { fg = colors.red },
          -- Command mode
          WildMenu = { fg = colors.yellow },
        }
      end,
      transparent_background = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = 'dark',
        percentage = 0.15,
      },

      -- Style options
      styles = {
        comments = { 'italic' },
        conditionals = { 'italic' },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },

      -- Integrations (comment out plugins you don't have)
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        -- For more plugins: https://github.com/catppuccin/nvim#integrations
      },
    }

    vim.cmd.colorscheme 'catppuccin'
  end,
}

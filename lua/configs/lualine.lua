require("lualine").setup({
  options = {
    theme = "catppuccin",
    icons_enabled = true,
    section_separators = {
      left = "",
      right = "",
    },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', {
      'diagnostics',
      symbols = {
        error = ' ',
        warn = ' ',
        info = ' ',
        hint = '󰄳 ',
      },
      colored = true,
    }},
    lualine_c = {},
    lualine_x = {'filetype'},
    lualine_y = {},
    lualine_z = {'progress'}
  }
})

 return {
   -- Set lualine as statusline
   --
   'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt
    config = function()
       local custom_gruvbox = require'lualine.themes.iceberg_dark'
    -- Change the background of lualine_c section for normal mode
      custom_gruvbox.normal.a.bg = nil
      custom_gruvbox.normal.b.bg = nil
      custom_gruvbox.normal.c.bg = nil

    require('lualine').setup {
    options = { theme  = custom_gruvbox,
      globalstatus = true,
      icons_enabled = true,
      transparent = true,
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {},
      lualine_z = {'location',"datetime", 'data'}
    },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
end
  }

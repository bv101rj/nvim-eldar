-- ~/.config/nvim/colors/eldar_solarized.lua
-- Eldar w/ Solarized accents 

local p = {
  bg = '#000000', -- forced black instead of #002b36
  fg = '#839496',
  c0 = '#073642',
  c1 = '#dc322f',
  c2 = '#859900',
  c3 = '#b58900',
  c4 = '#268bd2',
  c5 = '#d33682',
  c6 = '#2aa198',
  c7 = '#eee8d5',
  c8 = '#002b36',
  c9 = '#cb4b16',
  c10 = '#586e75',
  c11 = '#657b83',
  c12 = '#839496',
  c13 = '#6c71c4',
  c14 = '#93a1a1',
  c15 = '#fdf6e3',
}

vim.o.termguicolors = true
vim.g.colors_name = 'eldar_solarized_black'

-- Expose terminal 16 colors
for i, hex in ipairs {
  p.c0,
  p.c1,
  p.c2,
  p.c3,
  p.c4,
  p.c5,
  p.c6,
  p.c7,
  p.c8,
  p.c9,
  p.c10,
  p.c11,
  p.c12,
  p.c13,
  p.c14,
  p.c15,
} do
  vim.g['terminal_color_' .. (i - 1)] = hex
end

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Core UI
hi('Normal', { fg = p.fg, bg = p.bg })
hi('NormalFloat', { fg = p.fg, bg = p.bg })
hi('CursorLine', { bg = '#111111' })
hi('LineNr', { fg = p.c10, bg = p.bg })
hi('CursorLineNr', { fg = p.c11, bg = '#111111', bold = true })
hi('VertSplit', { fg = p.c10, bg = p.bg })

-- Syntax (Solarized accents on black)
hi('Comment', { fg = p.c10, italic = true })
hi('Constant', { fg = p.c3 })
hi('String', { fg = p.c2 })
hi('Identifier', { fg = p.c4 })
hi('Function', { fg = p.c4, bold = true })
hi('Statement', { fg = p.c1 })
hi('Keyword', { fg = p.c5 })
hi('Type', { fg = p.c2, bold = true })
hi('Special', { fg = p.c6 })
hi('Todo', { fg = p.c11, bold = true })
hi('Error', { fg = p.c15, bg = p.c1, bold = true })

-- Diagnostics
hi('DiagnosticError', { fg = p.c1 })
hi('DiagnosticWarn', { fg = p.c3 })
hi('DiagnosticInfo', { fg = p.c4 })
hi('DiagnosticHint', { fg = p.c6 })

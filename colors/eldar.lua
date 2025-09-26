-- ~/.config/nvim/colors/eldar.lua
-- Eldar for Neovim

local p = {
  bg = '#000000',
  fg = '#EEEEEC',
  c0 = '#000000',
  c1 = '#CC0000',
  c2 = '#4E9A06',
  c3 = '#C4A000',
  c4 = '#3465A4',
  c5 = '#75507B',
  c6 = '#06989A',
  c7 = '#D3D7CF',
  c8 = '#555753',
  c9 = '#EF2929',
  c10 = '#8AE234',
  c11 = '#FCE94F',
  c12 = '#729FCF',
  c13 = '#AD7FA8',
  c14 = '#34E2E2',
  c15 = '#EEEEEC',
}

vim.o.termguicolors = true
vim.g.colors_name = 'eldar_tango'

-- Expose terminal 16 colors (helps :terminal and some plugins)
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
hi('FloatBorder', { fg = p.c8, bg = p.bg })
hi('CursorLine', { bg = '#111111' })
hi('CursorColumn', { bg = '#111111' })
hi('LineNr', { fg = p.c8, bg = p.bg })
hi('CursorLineNr', { fg = p.c11, bg = '#111111', bold = true })
hi('SignColumn', { bg = p.bg })
hi('VertSplit', { fg = p.c8, bg = p.bg })
hi('WinSeparator', { fg = p.c8 })

-- Editor elements
hi('Visual', { bg = '#222222' })
hi('Search', { fg = p.bg, bg = p.c11 })
hi('IncSearch', { fg = p.bg, bg = p.c12, bold = true })
hi('MatchParen', { fg = p.c11, bold = true })
hi('Pmenu', { fg = p.fg, bg = '#0f0f0f' })
hi('PmenuSel', { fg = p.bg, bg = p.c12 })
hi('PmenuSbar', { bg = '#101010' })
hi('PmenuThumb', { bg = p.c8 })
hi('StatusLine', { fg = p.fg, bg = '#101010' })
hi('StatusLineNC', { fg = p.c8, bg = '#0b0b0b' })
hi('TabLine', { fg = p.c8, bg = '#0b0b0b' })
hi('TabLineSel', { fg = p.fg, bg = '#151515', bold = true })
hi('TabLineFill', { bg = '#0b0b0b' })
hi('ColorColumn', { bg = '#101010' })
hi('Whitespace', { fg = '#202020' })

-- Syntax (Tango-ish mapping)
hi('Comment', { fg = p.c8, italic = true })
hi('Constant', { fg = p.c10 }) -- numbers, booleans
hi('String', { fg = p.c10 })
hi('Character', { fg = p.c10 })
hi('Identifier', { fg = p.c12 }) -- variables
hi('Function', { fg = p.c4, bold = true })
hi('Statement', { fg = p.c1 }) -- if/for/return
hi('Operator', { fg = p.c15 })
hi('Keyword', { fg = p.c5 })
hi('PreProc', { fg = p.c11 })
hi('Include', { fg = p.c11 })
hi('Define', { fg = p.c11 })
hi('Type', { fg = p.c2, bold = true })
hi('Special', { fg = p.c14 })
hi('Delimiter', { fg = p.c7 })
hi('Todo', { fg = p.c11, bold = true })
hi('Error', { fg = p.c15, bg = p.c1, bold = true })
hi('WarningMsg', { fg = p.c11 })
hi('DiagnosticError', { fg = p.c9 })
hi('DiagnosticWarn', { fg = p.c11 })
hi('DiagnosticInfo', { fg = p.c12 })
hi('DiagnosticHint', { fg = p.c14 })
hi('DiagnosticUnderlineError', { sp = p.c9, undercurl = true })
hi('DiagnosticUnderlineWarn', { sp = p.c11, undercurl = true })
hi('DiagnosticUnderlineInfo', { sp = p.c12, undercurl = true })
hi('DiagnosticUnderlineHint', { sp = p.c14, undercurl = true })

-- Diff / VCS
hi('DiffAdd', { fg = p.c10, bg = '#0a120a' })
hi('DiffChange', { fg = p.c12, bg = '#0a0f12' })
hi('DiffDelete', { fg = p.c9, bg = '#120a0a' })
hi('DiffText', { fg = p.c12, bg = '#0e1a24', bold = true })

-- Git signs (if plugin present)
hi('GitSignsAdd', { fg = p.c10 })
hi('GitSignsChange', { fg = p.c12 })
hi('GitSignsDelete', { fg = p.c9 })

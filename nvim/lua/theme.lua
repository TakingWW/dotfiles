local M = {}

vim.api.nvim_set_hl(0, "inserte", { bg = "#D0F5BE"})
vim.api.nvim_set_hl(0, "normale", { bg = "#F1D4E5"})
vim.api.nvim_set_hl(0, "visuale", { bg = "#E57C23"})
vim.cmd("set guicursor=n:block-normale,i:block-inserte,v:block-visuale")
M.c = {
	base00 = "#0B0E14",
	base01 = "#1c1f25",
	base02 = "#24272d",
	base03 = "#2b2e34",
	base04 = "#33363c",
	base05 = "#c9c7be",
	base06 = "#E6E1CF",
	base07 = "#D9D7CE",
	base08 = "#c9c7be",
	base09 = "#FFEE99",
	base0A = "#56c3f9",
	base0B = "#AAD84C",
	base0C = "#FFB454",
	base0D = "#F07174",
	base0E = "#FFB454",
	base0F = "#CBA6F7",
}
vim.api.nvim_set_hl(0, "Normal", { fg = "#FFFFFF", bg = M.c.base00})
vim.api.nvim_set_hl(0, "Bold", { fg = nil, bg = nil})
vim.api.nvim_set_hl(0, "Debug", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "Directory", { fg = M.c.base0D, bg = nil})
vim.api.nvim_set_hl(0, "Error", { fg = M.c.base08, bg = M.c.base00})
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = M.c.base08, bg = M.c.base00})
vim.api.nvim_set_hl(0, "Exception", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "FoldColumn", { fg = M.c.base0C, bg = M.c.base00})
vim.api.nvim_set_hl(0, "Folded", { fg = M.c.base03, bg = M.c.base01})
vim.api.nvim_set_hl(0, "IncSearch", { fg = M.c.base01, bg = M.c.base09})
vim.api.nvim_set_hl(0, "Italic", { fg = nil, bg = nil})
vim.api.nvim_set_hl(0, "Macro", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "MatchParen", { fg = nil, bg = M.c.base03})
vim.api.nvim_set_hl(0, "ModeMsg", { fg = M.c.base0B, bg = nil})
vim.api.nvim_set_hl(0, "MoreMsg", { fg = M.c.base0B, bg = nil})
vim.api.nvim_set_hl(0, "Question", { fg = M.c.base0D, bg = nil})
vim.api.nvim_set_hl(0, "SpecialKey", { fg = M.c.base03, bg = nil})
vim.api.nvim_set_hl(0, "TooLong", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "Underlined", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "Visual", { fg = nil, bg = M.c.base02})
vim.api.nvim_set_hl(0, "VisualNOS", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "WarningMsg", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "WildMenu", { fg = M.c.base08, bg = M.c.base0A})
vim.api.nvim_set_hl(0, "Title", { fg = M.c.base0D, bg = nil})
vim.api.nvim_set_hl(0, "Conceal", { fg = M.c.base0D, bg = M.c.base00})
vim.api.nvim_set_hl(0, "Cursor", { fg = M.c.base00, bg = M.c.base05})
vim.api.nvim_set_hl(0, "NonText", { fg = M.c.base03, bg = nil})
vim.api.nvim_set_hl(0, "LineNr", { fg = M.c.base04, bg = M.c.base00})
vim.api.nvim_set_hl(0, "SignColumn", { fg = M.c.base04, bg = M.c.base00})
vim.api.nvim_set_hl(0, "StatusLine", { fg = M.c.base05, bg = M.c.base02})
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = M.c.base04, bg = M.c.base01})
vim.api.nvim_set_hl(0, "WinBar", { fg = M.c.base05, bg = nil})
vim.api.nvim_set_hl(0, "WinBarNC", { fg = M.c.base04, bg = nil})
vim.api.nvim_set_hl(0, "VertSplit", { fg = M.c.base05, bg = M.c.base00})
vim.api.nvim_set_hl(0, "ColorColumn", { fg = nil, bg = M.c.base01})
vim.api.nvim_set_hl(0, "CursorColumn", { fg = nil, bg = M.c.base01})
vim.api.nvim_set_hl(0, "CursorLine", { fg = nil, bg = M.c.base01})
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = M.c.base04, bg = M.c.base01})
vim.api.nvim_set_hl(0, "QuickFixLine", { fg = nil, bg = M.c.base01})
vim.api.nvim_set_hl(0, "PMenu", { fg = M.c.base05, bg = M.c.base01})
vim.api.nvim_set_hl(0, "PMenuSel", { fg = M.c.base01, bg = M.c.base05})
vim.api.nvim_set_hl(0, "PMenuKindSel", { fg = "#862B0D", bg = M.c.base05})
vim.api.nvim_set_hl(0, "PMenuKind", { fg = "#EF6262", bg = M.c.base01})
vim.api.nvim_set_hl(0, "PMenuExtra", { fg = M.c.base05, bg = M.c.base01})
vim.api.nvim_set_hl(0, "PMenuExtraSel", { fg = M.c.base01, bg = M.c.base05})
vim.api.nvim_set_hl(0, "TabLine", { fg = M.c.base03, bg = M.c.base01})
vim.api.nvim_set_hl(0, "TabLineFill", { fg = M.c.base03, bg = M.c.base01})
vim.api.nvim_set_hl(0, "TabLineSel", { fg = M.c.base0B, bg = M.c.base01})

-- Standard syntax highlighting
vim.api.nvim_set_hl(0, "Boolean", { fg = M.c.base09, bg = nil})
vim.api.nvim_set_hl(0, "Character", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "Comment", { fg = M.c.base03, bg = nil})
vim.api.nvim_set_hl(0, "Conditional", { fg = M.c.base0E, bg = nil})
vim.api.nvim_set_hl(0, "Constant", { fg = M.c.base09, bg = nil})
vim.api.nvim_set_hl(0, "Define", { fg = M.c.base0E, bg = nil})
vim.api.nvim_set_hl(0, "Delimiter", { fg = M.c.base0F, bg = nil})
vim.api.nvim_set_hl(0, "Float", { fg = M.c.base09, bg = nil})
vim.api.nvim_set_hl(0, "Function", { fg = M.c.base0D, bg = nil})
vim.api.nvim_set_hl(0, "Identifier", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "Include", { fg = M.c.base0D, bg = nil})
vim.api.nvim_set_hl(0, "Keyword", { fg = M.c.base0E, bg = nil})
vim.api.nvim_set_hl(0, "Label", { fg = M.c.base0A, bg = nil})
vim.api.nvim_set_hl(0, "Number", { fg = M.c.base09, bg = nil})
vim.api.nvim_set_hl(0, "Operator", { fg = M.c.base05, bg = nil})
vim.api.nvim_set_hl(0, "PreProc", { fg = M.c.base0A, bg = nil})
vim.api.nvim_set_hl(0, "Repeat", { fg = M.c.base0A, bg = nil})
vim.api.nvim_set_hl(0, "Special", { fg = M.c.base0C, bg = nil})
vim.api.nvim_set_hl(0, "SpecialChar", { fg = M.c.base0F, bg = nil})
vim.api.nvim_set_hl(0, "Statement", { fg = M.c.base08, bg = nil})
vim.api.nvim_set_hl(0, "StorageClass", { fg = M.c.base0A, bg = nil})
vim.api.nvim_set_hl(0, "String", { fg = M.c.base0B, bg = nil})
vim.api.nvim_set_hl(0, "Structure", { fg = M.c.base0E, bg = nil})
vim.api.nvim_set_hl(0, "Tag", { fg = M.c.base0A, bg = nil})
vim.api.nvim_set_hl(0, "Type", { fg = M.c.base0A, bg = nil})
vim.api.nvim_set_hl(0, "Typedef", { fg = M.c.base0A, bg = nil})
vim.api.nvim_set_hl(0, "Search", { fg = base01, bg = base0A})
vim.api.nvim_set_hl(0, "Substitute", { fg = base01, bg = base0A})
vim.api.nvim_set_hl(0, "Todo", { fg = base0A, bg = base01})

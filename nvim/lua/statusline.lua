local modes = {
	["n"] = "NORMAL",
	["no"] = "NORMAL",
	["v"] = "VISUAL",
	["V"] = "VISUAL LINE",
	[""] = "VISUAL BLOCK",
	["s"] = "SELECT",
	["S"] = "SELECT LINE",
	[""] = "SELECT BLOCK",
	["i"] = "INSERT",
	["ic"] = "INSERT",
	["R"] = "REPLACE",
	["Rv"] = "VISUAL REPLACE",
	["c"] = "COMMAND",
	["cv"] = "VIM EX",
	["ce"] = "EX",
	["r"] = "PROMPT",
	["rm"] = "MOAR",
	["r?"] = "CONFIRM",
	["!"] = "SHELL",
	["t"] = "TERMINAL",
}
local highlight = {
	["n"] = "NORMALMODE",
	["no"] = "NORMALMODE",
	["v"] = "VISUALMODE",
	["V"] = "VISUALMODE",
	[""] = "VISUALMODE",
	["s"] = "StatusLine",
	["S"] = "StatusLine",
	[""] = "StatusLine",
	["i"] = "INSERTMODE",
	["ic"] = "INSERTMODE",
	["R"] = "StatusLine",
	["Rv"] = "StatusLine",
	["c"] = "StatusLine",
	["cv"] = "StatusLine",
	["ce"] = "StatusLine",
	["r"] = "StatusLine",
	["rm"] = "StatusLine",
	["r?"] = "StatusLine",
	["!"] = "StatusLine",
	["t"] = "StatusLine",
}

local function mode()
	local current_mode = vim.api.nvim_get_mode().mode
	local mode_color = string.format("%s%s%s", "%#", highlight[current_mode], "#")
	local mode = string.format("%s", modes[current_mode]):upper()
	return string.format("%s %s ", mode_color, mode)
end

local function modified()
	local buf = vim.api.nvim_get_current_buf()
	local buf_modified = vim.api.nvim_buf_get_option(buf, 'modified')
	if buf_modified then
		return string.format(" %s ", "[+]")
	end
	return ""

end

local function filename()
	local current_mode = vim.api.nvim_get_mode().mode
	local mode_len = string.len(string.format(" %s ", modes[current_mode]))
	local line = ""

	if vim.bo.filetype ~= "alpha" then
		line = " %l:%c "
	end

	local window_width = vim.api.nvim_win_get_width(0)
	local subtraction = window_width % 2
	local position = (window_width - subtraction) / 2
	local fname = vim.fn.expand "%:t"

	if fname == "" then
		return ""
	end
	local s = ""

	local size = (window_width - mode_len - string.len(line) - 1) / 2 - ( string.len(fname) / 2 )
	for i = 1, size do
		s = string.format("%s%s", s, " ")
	end

	return string.format("%s%s%s%s","%#StatusLine#", s, fname, " %#StatusLine#")
end

local function lineinfo()
	if vim.bo.filetype == "alpha" then
		return ""
	end
	return "%= %#NORMALMODE# %l:%c "
end

Statusline = {}

Statusline.active = function()
	return table.concat {
		mode(),
		filename(),
		modified(),
		lineinfo(),
}
end
 
function Statusline.inactive()
	return " %F"
end

vim.api.nvim_exec([[
	augroup Statusline
	au!
	au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
	au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
	augroup END
]], false)

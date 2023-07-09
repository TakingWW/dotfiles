local background = "#24272d"
vim.api.nvim_set_hl(0, "INSERTMODE", { fg = "#D0F5BE", bg = background })
vim.api.nvim_set_hl(0, "NORMALMODE", { fg = "#4A55A2", bg = background })
vim.api.nvim_set_hl(0, "VISUALMODE", { fg = "#E57C23", bg = background })
vim.api.nvim_set_hl(0, "FILENAME", { fg = "#E7CEA6", bg = background })

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
	return string.format(" %s ", modes[current_mode]):upper()
end

local function update_mode_colors()
	local current_mode = vim.api.nvim_get_mode().mode
	return string.format("%s%s%s", "%#", highlight[current_mode], "#")
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
	local fname = vim.fn.expand "%:t"
	if fname == "" then
		return ""
	end

	return string.format(" %s%s%s%s","%#Normal# ", "%#FILENAME# ", fname, " %#NORMAL#")
end

local function lineinfo()
	if vim.bo.filetype == "alpha" then
		return ""
	end
	return " %l:%c "
end

Statusline = {}

Statusline.active = function()
	return table.concat {
		update_mode_colors(),
		mode(),
		filename(),
		modified(),
		"%=%#StatusLine#",
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

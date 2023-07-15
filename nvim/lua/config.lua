vim.opt.cmdheight = 1
vim.opt.relativenumber = false
vim.opt.number = false
vim.opt.scrolloff = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.wrap = false
vim.opt.splitbelow = true
vim.opt.wildignorecase = true
vim.opt.foldcolumn = '2'

vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = 20
vim.g.netrw_browse_split = 4
vim.g.netrw_liststyle = 3

vim.cmd([[
	set wildignore+=**/target/*,*.o
	set completeopt-=preview
	set path=.,,,$PWD/
	set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
	set grepformat+=%f:%l:%c:%m
	set clipboard+=unnamedplus
]])

local options = { silent = true, noremap = true }
local options2 = {noremap = true}
vim.keymap.set('i', 'jk', '<Esc>', options)
vim.keymap.set('n', 'x', 'V', options)
vim.keymap.set('n', '<Space>s', ':silent lgrep<Space>', options2)
vim.keymap.set('n', '<Space>q', ':lopen<CR>', options)
vim.keymap.set('n', '<Space>e', ':Vex<CR>', options)
vim.keymap.set('n', '<Space>b', ':b<Space>', options2)
vim.keymap.set('n', '<Space>f', ':e<Space>**/', options2)
vim.keymap.set('n', '<Space>d', ':%bd|e#|bd#<CR>', options)
vim.keymap.set('n', '<Esc>', ':only<CR>', options)
vim.keymap.set('v', '>', '>gv', options)
vim.keymap.set('v', '<', '<gv', options)
vim.cmd([[
	set wildignore+=**/target/*
	set completeopt-=preview
	set path=.,,,$PWD/
	set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
	set grepformat+=%f:%l:%c:%m
]])

vim.api.nvim_create_autocmd('FileType', {
	pattern = 'netrw',
	callback = function()
		local opts = {silent = true }
		vim.api.nvim_buf_set_keymap(0, "n", ".", "gh", opts)
		vim.api.nvim_buf_set_keymap(0, "n", "l", "<CR>", opts)
		vim.api.nvim_buf_set_keymap(0, "n", "h", "-", opts)
		vim.api.nvim_buf_set_keymap(0, "n", "q", ":q<CR>", opts)
		vim.api.nvim_buf_set_keymap(0, "n", "a", "%", opts)
	end
})


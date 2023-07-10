vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.keymap.set('n', 'x', 'V', { noremap = true, silent = true })
vim.keymap.set('n', '<Space>s', ':silent lgrep<Space>', { noremap = true })
vim.keymap.set('n', '<Space>m', ':lopen<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Space>e', ':Vex<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Space>b', ':b<Space>', {noremap = true})
vim.keymap.set('n', '<Space>f', ':e<Space>**/', {noremap = true})
vim.keymap.set('n', '<Space>d', ':%bd|e#|bd#<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Space>q', ':q<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '>', '>gv', {noremap = true, silent = true})
vim.keymap.set('v', '<', '<gv', {noremap = true, silent = true})

vim.api.nvim_create_autocmd('FileType', {
	pattern = 'netrw',
	callback = function()
		vim.api.nvim_buf_set_keymap(0, "n", ".", "gh", {silent = true })
		vim.api.nvim_buf_set_keymap(0, "n", "l", "<CR>", {silent = true })
		vim.api.nvim_buf_set_keymap(0, "n", "h", "-", {silent = true })
		vim.api.nvim_buf_set_keymap(0, "n", "q", ":q<CR>", {silent = true })
		vim.api.nvim_buf_set_keymap(0, "n", "a", "%", {silent = true })
	end
})

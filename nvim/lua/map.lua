vim.keymap.set('i', 'jk', '<Esc>', {noremap = true, silent = true})
vim.keymap.set('n', 'x', 'V', {noremap = true, silent = true})
vim.keymap.set('n', '<Space>/', ':silent lgrep<Space>', {noremap = true})
vim.keymap.set('n', '<Space>m', ':lopen<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Space>e', ':Vex<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Space>b', ':b<Space>', {noremap = true})
vim.keymap.set('n', '<Space>f', ':e<Space>**/', {noremap = true})
vim.keymap.set('n', '<Space>d', ':%bd|e#|bd#<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<Space>q', ':bd!<CR>', {noremap = true, silent = true})
vim.keymap.set('v', '>', '>gv', {noremap = true, silent = true})
vim.keymap.set('v', '<', '<gv', {noremap = true, silent = true})
vim.keymap.set('v', 'x', 'V', {noremap = true, silent = true })
vim.keymap.set("n", '[<Space>', function() return "<cmd>set paste<CR>m`" .. vim.v.count .. "O<Esc>``:set nopaste<CR>" end, {expr = true})
vim.keymap.set("n", ']<Space>', function() return "<cmd>set paste<CR>m`" .. vim.v.count .. "o<Esc>``:set nopaste<CR>" end, {expr = true})

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

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    vim.keymap.set('n', '<Space>a', vim.lsp.buf.code_action, { buffer = args.buf })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
	vim.keymap.set('i', '<c-space>', vim.lsp.omnifunc, { buffer = args.buf})
	vim.keymap.set('n', '=', vim.lsp.buf.format, { buffer = args.buf})
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = args.buf})
  end,
})

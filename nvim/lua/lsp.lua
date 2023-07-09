local lang = {
	['rust'] = { 
		['lsp-server'] = {'rust-analyzer'},
		['root'] = {'Cargo.toml'},
	},
	['c'] = { 
		['lsp-server'] = {'clangd'},
		['root'] = {'Makefile'},
	}
}
for k, v in pairs(lang) do
	vim.api.nvim_create_autocmd('FileType', {
		pattern = k,
		callback = function()
			local root_dir = vim.fs.dirname(
			vim.fs.find(v['root'], {upward = true})[1]
			)
			local client = vim.lsp.start({
				name = k,
				cmd = v['lsp-server'],
				root_dir = root_dir,
			})
			vim.lsp.buf_attach_client(0, client)
			require("lspkind").init()
		end
	})
end
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
    vim.keymap.set('n', '<Space>a', vim.lsp.buf.code_action, { buffer = args.buf })
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
	vim.keymap.set('i', '<c-space>', vim.lsp.omnifunc, { buffer = args.buf})
	vim.keymap.set('n', '=', vim.lsp.buf.format, { buffer = args.buf})
  end,
})

vim.api.nvim_create_autocmd('DiagnosticChanged', {
	callback = function(args)
		vim.diagnostic.setloclist({open = false})
	end,
})

local lang = {
	['rust'] = { 
		['lsp-server'] = {'rust-analyzer'},
		['root'] = {'Cargo.toml'},
	},
	['c'] = { 
		['lsp-server'] = {'clangd'},
		['root'] = {'Makefile'},
	},
	['cpp'] = { 
		['lsp-server'] = {'clangd'},
		['root'] = {'Makefile'},
	},
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

vim.api.nvim_create_autocmd('DiagnosticChanged', {
	callback = function(args)
		vim.diagnostic.setloclist({open = false})
	end,
})

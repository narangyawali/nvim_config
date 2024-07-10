return {{
	"williamboman/mason.nvim",
	config=function ()
			require("mason").setup()
		end
		},
		{
		'williamboman/mason-lspconfig.nvim',
		config=function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" }
			})
		end
	},
	{
    "neovim/nvim-lspconfig",
		config= function()
			local capabilities= require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({
				capabilities= capabilities
			})
			lspconfig.tsserver.setup({
				capabilities= capabilities
			})
			lspconfig.eslint.setup({
				settings = {
					capabilities = capabilities,
					rulesCustomizations = {
						{ rule = 'no-unused-vars', severity = 'off' }
					}
				}
			})
			lspconfig.tailwindcss.setup({})
			lspconfig.pyright.setup({
					-- capabilities= capabilities
			})
			lspconfig.cssls.setup({
				capabilities= capabilities
			})
			lspconfig.gopls.setup({
				capabilities = capabilities
			})
			lspconfig.csharp_ls.setup({
				capabilities = capabilities

			})
			-- lspconfig.cssmodule_ls.setup({
			--
			-- 	capabilities= capabilities
			-- })
			vim.keymap.set("n","K", vim.lsp.buf.hover,{desc="lsp hover"})
			vim.keymap.set('n', 'D', vim.lsp.buf.type_definition, {desc="lsp type defination"})
		    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {desc="lsp go to defination"})
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {desc="lsp implementation"})
		    -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, {desc="lsp go to references"})
		    vim.keymap.set({ 'n', 'v' }, '<Space>ca', vim.lsp.buf.code_action, {desc="lsp code action"})
		    vim.keymap.set({ 'n', 'v' }, '<Space>ft', vim.lsp.buf.format, {desc="lsp format"})
			vim.keymap.set({"n","v"},"<Space>rn",vim.lsp.buf.rename,{desc="lsp rename "})

		end

	}

}

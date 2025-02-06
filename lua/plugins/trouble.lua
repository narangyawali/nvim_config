return {
	-- not working currently 
	"folke/trouble.nvim",
	requires = "nvim-tree/nvim-web-devicons",
	config = function()
		local trouble = require("trouble")

		vim.keymap.set("n", "<Space>td", function()
			trouble.open("lsp_definitions")
		end, { desc = "find definition in Trouble" })
	end
}


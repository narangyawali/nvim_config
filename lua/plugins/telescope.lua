return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                              , branch = '0.1.x',
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		defaults = {
			file_ignore_patterns = {
				"node_modules",
			},
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<Space>ff", builtin.find_files, { desc = "find_files" })
			vim.keymap.set("n", "<Space>fr", builtin.lsp_references, { desc = "lsp_references" })
			vim.keymap.set("n", "<Space>fg", builtin.live_grep, { desc = "live_grep" })
			vim.keymap.set("n", "<Space>fb", builtin.buffers, { desc = " find buffers" })
			vim.keymap.set("n", "<Space>fh", builtin.help_tags, { desc = "help_tags" })
			-- vim.keymap.set("n", "<Space>fd", builtin.lsp_definitions , { desc = "find definition" })

			vim.keymap.set("n", "<Space>fd", function()
				builtin.lsp_definitions({ theme = "dropdown",
					jump_type = "never", -- Prevents automatic jumping
					-- fname_width = 80,    -- Adjust the width of the filename column
				}) -- Shows definitions in a Telescope window
			end, { desc = "find definition " })

		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-media-files.nvim",
		config = function()
			require('telescope').load_extension('media_files')
			require("telescope").setup({
				extensions = {
					["media_files"] = {
						-- filetypes whitelist
						-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
						filetypes = { "png", "webp", "jpg", "jpeg" },
						-- find command (defaults to `fd`)
						find_cmd = "find",
					},
				},
			})
		end,
	},
	{
		"jonarrien/telescope-cmdline.nvim",
		config = function()
			require("telescope").load_extension("cmdline")
			vim.api.nvim_set_keymap("n", "<Space>:", ":Telescope cmdline<CR>", { noremap = true, desc = "Cmdline" })
		end,
	},
}

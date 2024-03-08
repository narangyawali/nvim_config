return {{
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
	defaults = {
		file_ignore_patterns = {
			"node_modules"
		}
	},
	config= function()

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<Space>ff', builtin.find_files, {desc="find_files"})
		vim.keymap.set('n', '<Space>fr', builtin.lsp_references, {desc="lsp_references"})
		vim.keymap.set('n', '<Space>fg', builtin.live_grep, {desc="live_grep"})
		vim.keymap.set('n', '<Space>fb', builtin.buffers, {desc=" find buffers"})
		vim.keymap.set('n', '<Space>fh', builtin.help_tags, {desc="help_tags"})

	end
},
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config= function()
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
						}

					}
				}
			}
			end
	},
	{
		'nvim-telescope/telescope-media-files.nvim',
		config=function()
			require('telescope').setup {
				extensions = {
					["media_files"] = {
						-- filetypes whitelist
						-- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
						filetypes = {"png", "webp", "jpg", "jpeg"},
						-- find command (defaults to `fd`)
						find_cmd = "rg"
					}
				},
			}
		end
	}


}


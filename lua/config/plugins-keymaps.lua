
-- Mappings

-- Map Ctrl + Down to switch to the one-dark color scheme
vim.api.nvim_set_keymap('n', '<C-Down>', ':colorscheme tokyonight-night<CR>', { noremap = true, silent = false })

-- Map Ctrl + Up to switch to the default color scheme
vim.api.nvim_set_keymap('n', '<C-Up>', ':colorscheme default<CR>', { noremap = true, silent = false })

vim.api.nvim_set_keymap('n','<Space>s',':NvimTreeToggle<CR>',{noremap= true, silent= false, desc="toggle nvim tree"})

-- UndotreeToggle
vim.api.nvim_set_keymap('n','<Space>a',':UndotreeToggle<CR>',{noremap= true, silent= false, desc="toggle Undotree"})

vim.api.nvim_set_keymap('n', '<F8>', ':lua ToggleVista()<CR>', { noremap = false, silent = false ,desc=" toggle vista.vim tagbar" })

-- fine cmd
vim.api.nvim_set_keymap('n', 'cc', '<cmd>FineCmdline<CR>', {noremap = true, silent=false,desc ="fine cmdLine"})

-- SudaWrite 
-- Command-line mapping: SW to run SudaWrite
vim.api.nvim_set_keymap('c',"SW", 'SudaWrite<CR>',{noremap = true , silent= false,desc="save file opened without sudo previlage"})

-- Commands

-- NvimTree auto start on start 
-- vim.cmd([[NvimTreeOpen]])


-- Set the default color scheme
-- vim.cmd('colorscheme one-dark')
vim.cmd('colorscheme tokyonight-night')


-- undo tree 
vim.keymap.set('n', '<F5>', vim.cmd.UndotreeToggle)

--- Show all diagnostics on current line in floating window
vim.api.nvim_set_keymap("n", "<Space>vd", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, silent= false,desc="vim diagonostic open_float" })
-- Go to next diagnostic (if there are multiple on the same line, only shows
-- one at a time in the floating window)
vim.api.nvim_set_keymap("n", "<Space>vn", ":lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent= false ,desc="vim diagonostic goto_next" })
-- -- Go to prev diagnostic (if there are multiple on the same line, only shows
-- -- one at a time in the floating window)
vim.api.nvim_set_keymap("n", "<Space>vp", ":lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent= false ,desc="vim diagonostic goto_prev"})

vim.keymap.set("n", "[c", function()
  require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = false,desc="go to context" })


-- harapoon keymap 
vim.api.nvim_set_keymap("n", "hpx", ":lua require('harpoon.mark').add_file()<CR>", { desc = "harpoon mark file" })
vim.api.nvim_set_keymap("n", "hpt", ":lua require('harpoon.mark').toggle_file()<CR>", { desc = "harpoon mark toggle" })
vim.api.nvim_set_keymap("n", "hpn",":lua require('harpoon.ui').nav_next()<CR>", { desc = "harpoon next file" })
vim.api.nvim_set_keymap("n", "hpp",":lua require('harpoon.ui').nav_prev()<CR>", { desc = "harpoon prev file" })
vim.api.nvim_set_keymap(
	"n",
	"hpm",
	":Telescope harpoon marks<CR>",
	{ noremap = true, silent = false, desc = "Telescope harpoon marks" }
)

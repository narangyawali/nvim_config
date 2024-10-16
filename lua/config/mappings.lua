
-- Map Alt + Enter to clear search highlighting
vim.api.nvim_set_keymap('n', '<A-Enter>', ':nohlsearch<CR>', { noremap = true, silent = false, desc = "clear search highlight" })


vim.api.nvim_set_keymap("n","<Leader>t",":echo 'hello world leader'<CR>",{noremap= true, silent= false, desc ="testing purpose" })

-- to enable , ( leader ) after whichkey popup
vim.api.nvim_set_keymap('i', '<Leader><Space>', ',', {noremap = true,desc = "just put comma"})

-- default Explorer  efficient to Switch between file with same directory
vim.api.nvim_set_keymap('n', '<Space>e', ':Explore<CR>', { noremap = true, silent = false ,desc="default Explorer" })

-- moving chunk of visually selected code 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv",{desc ="select and move selected code"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv",{ desc ="select and move selected code" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Copy to clipboard in normal and visual mode
vim.api.nvim_set_keymap("v" , '<Space>y', '"+y', { noremap = true, silent = false , desc ="copy to system clipboard" })
vim.api.nvim_set_keymap("v" , '<Space>y', '"+y', { noremap = true, silent = false , desc ="copy to system clipboard" })

-- Paste from clipboard in normal mode
vim.api.nvim_set_keymap('n', '<Space>p', '"+p', { noremap = true, silent = false , desc ="paste from system clipboard" })
vim.api.nvim_set_keymap('n', 'x', '"_x', { noremap = true, silent = false , desc ="delete single character in _ reg" })

-- doubel semicolone to quit window
vim.api.nvim_set_keymap('n', ';;', ':q<CR>', { noremap = true, silent = false , desc =" just quit" })

-- Normal mode mapping: <C-s> to save the file
--	vim.api.nvim_set_keymap({"n","i"}, '<C-s>', ':w<CR>', { silent = false })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = false })

-- Move between split windows
vim.api.nvim_set_keymap('n', '<Space>h', '<C-w>h', { noremap = true, silent = false ,desc="move between pane <--" })
vim.api.nvim_set_keymap('n', '<Space>l', '<C-w>l', { noremap = true, silent = false ,desc="move between pane -->" })
vim.api.nvim_set_keymap('n', '<Space>j', '<C-w>j', { noremap = true, silent = false ,desc="move between pane down" })
vim.api.nvim_set_keymap('n', '<Space>k', '<C-w>k', { noremap = true, silent = false ,desc="move between pane up" })


vim.api.nvim_set_keymap("n","<A-l>",":ls <CR>:b",{noremap= true, silent= false, desc ="testing purpose" })

-- help in vertical window
vim.api.nvim_set_keymap('c', 'vh', 'vertical :h ', { noremap = true, silent = false,desc="split window vertically same buffer" })
-- -- Quit a split window
-- vim.api.nvim_set_keymap('n', '<Space>qq', '<C-w>q<CR>', { noremap = true, silent = false })

-- Vertical split
vim.api.nvim_set_keymap('n', '<Space>vw', ':vert split<CR>', { noremap = true, silent = false,desc="split window vertically same buffer" })


-- Vertical resize with Alt + Left/Right
vim.api.nvim_set_keymap('n', '<A-Left>', ':vertical resize -5<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<A-Right>', ':vertical resize +5<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<A-Up>', ':horizontal resize +5<CR>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<A-Down>', ':horizontal resize -5<CR>', { noremap = true, silent = false })

-- Switch to next and previous buffers
vim.api.nvim_set_keymap('n', '<Space>n', ':bnext<CR>', { noremap = true, silent = false,desc="next buffer" })
vim.api.nvim_set_keymap('n', '<Space>m', ':bprevious<CR>', { noremap = true, silent = false,desc="previous buffer" })

-- Tab related mappings
vim.api.nvim_set_keymap('n', '<Space>t', ':tabnext<CR>', { noremap = true, silent = false, desc="next Tab" })
vim.api.nvim_set_keymap('n', '<Space>o', ':tabprevious<CR>', { noremap = true, silent = false, desc="previous Tab" })


-- vim diagnostic
vim.api.nvim_set_keymap('n','<Space>ved','lua vim.diagnostic.disable()<CR>',{noremap = true,silent= false,desc="disable vim diagnostic"})
vim.api.nvim_set_keymap('n','<Space>vee','lua vim.diagnostic.enable()<CR>',{noremap = true,silent= false,desc="disable vim enable"})

-- vim.api.nvim_set_keymap('n','<Space>dtu',':%s/\r//g<CR>',{noremap= true,silent= false,desc="remove ^M from end of line,aka:"})
vim.api.nvim_set_keymap('n','<Space>dtu',':! dos2unix % <CR>',{noremap= true,silent= false,desc="remove ^M from end of line,aka:"})

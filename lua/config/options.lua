
-- Enable line numbers and relative line numbers

-- Maping leader key to , comma
vim.g.mapleader= ","

-- leader for emmet
vim.g.user_emmet_leader_key=','

vim.o.number = true
vim.o.relativenumber = true

-- Show mode and command in the status line
vim.o.showmode = true
vim.o.showcmd = true
--vim.o.setnowrap = true
vim.o.linebreak = true
-- vim.o.wrap= true
vim.opt.smartindent = true
vim.opt.smartindent = true
vim.opt.showmatch = true

vim.opt.compatible= false
-- Auto-indentation settings
vim.o.autoindent = true
vim.o.tabstop = 4
vim.o.smarttab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.opt.ignorecase = true

-- Mouse support
vim.o.mouse = "a"

-- Set splitright
vim.o.splitright = false
vim.o.splitbelow = true

-- Hidden buffers
vim.o.hidden = true

-- Enable true color support
vim.o.termguicolors = true

-- Set the number of colors
-- vim.o.t_Co = 256
-- Always show the file name in the status line
vim.o.laststatus = 2
vim.opt.scrolloff = 2

-- to get relative line number in default Explorer
-- let g:netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"
vim.g.netrw_bufsettings="noma nomod nonu nobl nowrap ro rnu"

-- Save and load sessions
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,options,tabpages,winsize"


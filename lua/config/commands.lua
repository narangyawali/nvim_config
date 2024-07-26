
-- Enable file type detection and automatic commands
vim.cmd([[filetype plugin indent on]])
vim.cmd([[set nowrap]])

-- to remove carriage return useful in wsl
-- vim.cmd([[autocmd BufRead,BufWritePre * %s/\r$//]])

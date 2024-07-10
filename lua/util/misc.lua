vim.cmd [[
  augroup SetFileFormat
    autocmd!
    autocmd BufReadPost * set ff=unix
  augroup END
]]

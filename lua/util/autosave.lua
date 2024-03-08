
-- Initialize the global variable
_G.toggle_save_value = 0

-- Define the ToggleSave function
function ToggleSave()
  if _G.toggle_save_value == 0 then
    vim.api.nvim_out_write(":> autosave is active\n")
    -- autocmd InsertLeave * :w
    _G.toggle_save_value = 1
  else
    vim.api.nvim_out_write(":> autosave not active\n")
    _G.toggle_save_value = 0
  end
end

-- Define the Autosave command
vim.cmd("command! Autosave lua ToggleSave()")

function SaveOrNot()

  if _G.toggle_save_value == 1 then
	vim.api.nvim_command("w")
  end
end

-- autocmd InsertLeave *.* if  _G.toggle_save_value == 1 | :w | endif

-- Define an autocmd group
vim.api.nvim_exec([[
  augroup SaveOnLeave
    autocmd!
    autocmd InsertLeave *.* lua SaveOrNot()
  augroup END
]], true)


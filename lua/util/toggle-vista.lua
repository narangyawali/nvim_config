-- Initialize the global variable
_G.opened_vista_nvim_lsp = 0


function ToggleVista()
	if _G.opened_vista_nvim_lsp == 0 then
		vim.api.nvim_command("Vista nvim_lsp")
		_G.opened_vista_nvim_lsp = 1
		-- print("open")
	else
		vim.api.nvim_command("Vista!!")
		_G.opened_vista_nvim_lsp = 0
		-- print("close")
	end
end

function Tst()
	vim.api.nvim_out_write("test")
end

-- vim.cmd("command! ToggleVista lua ToggleVista()")

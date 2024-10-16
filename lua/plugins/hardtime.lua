return {
   "m4xshen/hardtime.nvim",
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
   opts = {

		disable_mouse=false,
		max_count=4,
		restriction_mode="hint",
	--	notification= false
	},
	config = function(_,opts)
		require("hardtime").setup(opts)
	end,
}

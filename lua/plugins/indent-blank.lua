return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		local configs = require("ibl")
		configs.setup()
	end
}

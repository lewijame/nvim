return {
	"huskyroll/gopher.nvim",
    ft = "go", "gomod",
	config = function()
		require("gopher").setup()
	end,
}

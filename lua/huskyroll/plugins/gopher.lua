return {
	"huskyroll/gopher.nvim",
	branch = "add-split-and-run",
    ft = "go", "gomod",
	config = function()
		require("gopher").setup()
	end,
}

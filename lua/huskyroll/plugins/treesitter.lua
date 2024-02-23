return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"lua",
				"javascript",
				"html",
				"go",
				"swift",
				"gdscript",
				"python",
				"json",
				"dockerfile",
				"css",
				"cpp",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
			auto_install = true,
		})
	end,
}

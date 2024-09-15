return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local treesitterConfigs = require("nvim-treesitter.configs")
		treesitterConfigs.setup({
      auto_install = false,
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"query",
				"vue",
				"javascript",
				"html",
				"css",
				"json",
				"tsx",
				"typescript",
				"yaml",
				"prisma",
				"markdown",
				"markdown_inline",
				"bash",
				"dockerfile",
				"gitignore",
			},
			sync_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
			indent = { enable = true, disable = { "yaml" } },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}

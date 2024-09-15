return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<leader>ee", ":Neotree toggle<CR>", opts)
		vim.keymap.set("n", "<leader>ex", ":Neotree close<CR>", opts)
		vim.keymap.set("n", "<leader>es", ":Neotree show<CR>", opts) -- show explore but not jump to it
		vim.keymap.set("n", "<leader>er", ":Neotree refresh<CR>", opts)

		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false, -- Default: don't show hidden files
				},
			},
		})
	end,
}

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato",
			transparent_background = true,
			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
			custom_highlights = function(colors)
				return {
          TabLineSel = { bg = colors.pink, fg = colors.base },
				}
			end,

			integrations = {
				cmp = false, -- it not works !!!!!
			},
		})

		vim.cmd.colorscheme("catppuccin")
	end,
}

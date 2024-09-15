return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			config = {
				shortcut = {
					{ desc = "[  Trung Kien]", group = "DashboardShortCut" },
				},
				packages = {
					enable = false,
				},
				footer = { "There is no tomorrow !!" },
			},
		})
	end,
}

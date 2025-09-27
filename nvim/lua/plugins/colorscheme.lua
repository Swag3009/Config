return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		transparent_background = true,
	},
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			integrations = {
				-- Disable Telescope integration to prevent conflicts
				telescope = false, 
			},
		})

		vim.cmd.colorscheme("catppuccin")

		-- Your custom highlight commands will now take effect
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "NormalFloatNC", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#89b4fa", bg = "NONE" }) 
		vim.api.nvim_set_hl(0, "FloatTitle", { fg = "#f5c2e7", bg = "NONE", bold = true }) 
	end,
}

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
 	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree toggle filesystem reveal left<CR>", {})
		require("neo-tree").setup({
			filesystem = {
				show_hidden = true,
				filtered_items = {
					hide_dotfiles = false, 
          visible = true
				},
			},
		})
	end,
}

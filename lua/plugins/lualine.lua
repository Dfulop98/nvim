return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				sections = {
					lualine_x = { require("yaml_nvim").get_yaml_key_and_value },
				},
				options = {
					theme = "dracula",
				},
			})
		end,
	},
}

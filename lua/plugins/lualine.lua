return {
		"nvim-lualine/lualine.nvim",
		config = function ()

			local navic = require"nvim-navic"

			require"lualine".setup {
				theme = "gruvbox",
				sections = {
					lualine_c = {
						{ navic.get_location, cond = navic.is_available },
					},
				},
			}

		end
}

--   ▄▄·       ▄▄▌        ▄▄▄
--  ▐█ ▌▪▪     ██•  ▪     ▀▄ █·
--  ██ ▄▄ ▄█▀▄ ██▪   ▄█▀▄ ▐▀▀▄
--  ▐███▌▐█▌.▐▌▐█▌▐▌▐█▌.▐▌▐█•█▌
--  ·▀▀▀  ▀█▄▀▪.▀▀▀  ▀█▄▀▪.▀  ▀
--  .▄▄ ·  ▄▄·  ▄ .▄▄▄▄ .• ▌ ▄ ·. ▄▄▄ .
--  ▐█ ▀. ▐█ ▌▪██▪▐█▀▄.▀··██ ▐███▪▀▄.▀·
--  ▄▀▀▀█▄██ ▄▄██▀▐█▐▀▀▪▄▐█ ▌▐▌▐█·▐▀▀▪▄
--  ▐█▄▪▐█▐███▌██▌▐▀▐█▄▄▌██ ██▌▐█▌▐█▄▄▌
--   ▀▀▀▀ ·▀▀▀ ▀▀▀ · ▀▀▀ ▀▀  █▪▀▀▀ ▀▀▀

return {
	{
		-- tokyonight (night) (moon/storm/night/day)
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			require("tokyonight").setup({})
			-- vim.cmd([[ colorscheme tokyonight-night ]])
		end,
	},
	{
		-- onedark theme (deep) (dark/darker/cool/deep/warm/warmer)
		"navarasu/onedark.nvim",
		priority = 1000,
		config = function()
			require("onedark").setup({
				style = "deep",
			})
			-- vim.cmd([[ colorscheme onedark ]])
		end,
	},
	{
		-- catppuccin theme (mocha) (latte/frappe/macchiato/mocha)
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({})
			-- vim.cmd([[ colorscheme catppuccin-mocha ]])
		end,
	},
	{
		"projekt0n/github-nvim-theme",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("github-theme").setup({})
			-- vim.cmd([[ colorscheme github-dark ]])
		end,
	},
	{
		"Mofiqul/dracula.nvim",
		config = function()
			require("dracula").setup({
				show_end_of_buffer = false,
				-- transparent_bg = true,
				lualine_bg_color = "#181818",
				colors = {
					bg = "#15141B",
					fg = "#FDFDFD",
					selection = "#232323",
					comment = "#3E3E3E",
					red = "#FF5555",
					orange = "#f97d26",
					yellow = "#f9a826",
					green = "#26f96b",
					purple = "#b267e6",
					cyan = "#26b7f9",
					pink = "#f92672",
					bright_red = "#ff2669",
					bright_green = "#26ff7b",
					bright_yellow = "#ffba26",
					bright_blue = "#26adff",
					bright_magenta = "#ce72ff",
					bright_cyan = "#26feff",
					bright_white = "#FFFFFD",
					menu = "#202020",
					visual = "#3E4452",
					gutter_fg = "#4B5263",
					nontext = "#3E3E3E",
					white = "#F8F8F2",
					black = "#181818",
				},
			})
			-- vim.cmd([[ colorscheme github-dark ]])
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			-- vim.cmd([[ colorscheme nightfox ]])
		end,
	},
	{
		"shaunsingh/nord.nvim",
		config = function()
			-- vim.cmd([[ colorscheme nord ]])
		end,
	},
	{
		"baliestri/aura-theme",
		lazy = false,
		priority = 1000,
		config = function(plugin)
			vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
			vim.cmd([[colorscheme aura-dark]])
		end,
	},
}

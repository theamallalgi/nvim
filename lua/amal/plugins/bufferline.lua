return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			mode = "tabs",
			seperator_style = "slant",
			offsets = {
				{
					filetype = "neo-tree",
					text = "⁂  Explorer",
					text_align = "left",
					separator = true,
				},
			},
		},
		highlights = {
			fill = {
				ctermbg = "#15141b",
				bg = "#0f0f14",
			},
		},
	},
}

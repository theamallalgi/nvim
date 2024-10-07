return {
  "folke/zen-mode.nvim",
  opts = {
		backdrop = 0.95,
		width = 1,
		height = 1,
		options = {
			signcolumn = 'no',
			number = true,
			relativenumber = true,
			cursorline = false,
			cursorcolumn = false,
		}
  },
	plugins = {
		options = {
			enabled = true,
		},
		twilight = { enabled = true },
	}
}

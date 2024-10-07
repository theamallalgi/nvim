return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")
		local keymap = vim.keymap

		telescope.setup({
			defaults = {
				prompt_prefix = "   ",
				selection_caret = " ▶  ",
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-j>"] = require('telescope.actions').move_selection_next,
						["<C-k>"] = require('telescope.actions').move_selection_previous,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		keymap.set("n", "<Leader>f", "<cmd>:Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
		keymap.set(
			"n",
			"<Leader>o",
			"<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
			{ desc = "Fuzzy recent files in cwd" }
		)
		keymap.set("n", "<Leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<Leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Fuzzy string under cursor in cwd" })
		keymap.set("n", "<Leader>b", builtin.buffers, {}) -- shows open buffers with (space-b)

		require("amal.core.uiconfig") -- telescope ui settings
	end,
}

return {
	'numToStr/Comment.nvim',
	event = {"BufReadPre", "BufNewFile"},
	config = true -- runs require('comment').setup()
}

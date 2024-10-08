--   ▄▄ • ▄▄▄ . ▐ ▄ ▄▄▄ .▄▄▄   ▄▄▄· ▄▄▌
--  ▐█ ▀ ▪▀▄.▀·•█▌▐█▀▄.▀·▀▄ █·▐█ ▀█ ██•
--  ▄█ ▀█▄▐▀▀▪▄▐█▐▐▌▐▀▀▪▄▐▀▀▄ ▄█▀▀█ ██▪
--  ▐█▄▪▐█▐█▄▄▌██▐█▌▐█▄▄▌▐█•█▌▐█ ▪▐▌▐█▌▐▌
--  ·▀▀▀▀  ▀▀▀ ▀▀ █▪ ▀▀▀ .▀  ▀ ▀  ▀ .▀▀▀
--  .▄▄ · ▄▄▄ .▄▄▄▄▄▄▄▄▄▄▪   ▐ ▄  ▄▄ • .▄▄ ·
--  ▐█ ▀. ▀▄.▀·•██  •██  ██ •█▌▐█▐█ ▀ ▪▐█ ▀.
--  ▄▀▀▀█▄▐▀▀▪▄ ▐█.▪ ▐█.▪▐█·▐█▐▐▌▄█ ▀█▄▄▀▀▀█▄
--  ▐█▄▪▐█▐█▄▄▌ ▐█▌· ▐█▌·▐█▌██▐█▌▐█▄▪▐█▐█▄▪▐█
--   ▀▀▀▀  ▀▀▀  ▀▀▀  ▀▀▀ ▀▀▀▀▀ █▪·▀▀▀▀  ▀▀▀▀

-- indentation config
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- clipboard
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set paste")

-- status bar
vim.cmd("set noshowmode")
vim.cmd("set conceallevel=0")
vim.cmd("set cmdheight=0")

-- split screen config (only splits to right and bottom sides)
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Misc Config
vim.o.guifont = "JetbrainsMono Nerd Font:h11" -- sets the default font and height
vim.g.mapleader = " " -- maps the leader key
vim.g.maplocalleader = "\\" -- local leader key config
vim.opt.autoread = true -- updates vim after file update outside
vim.cmd("set number") -- sets line numbers
vim.cmd("set relativenumber") -- sets relative line numbers
vim.cmd("set nowrap") -- turns off word wrap
vim.cmd("set fileformat=unix") -- turns file format to unix style
vim.cmd("let g:netrw_liststyle = 3") -- sets the default file explorer style to tree structure
vim.opt.showmode = false -- disables the ~ symbol (end of buffer indicator)
vim.o.termguicolors = true -- sets proper terminal colors

-- theme related config
-- vim.g.nord_disable_background = true

-- Neovide Config
if vim.g.neovide then
	vim.g.neovide_hide_mouse_when_typing = false -- hides the mouse cursor when typing
	vim.g.neovide_cursor_animate_command_line = false -- disables cursor animation on cmd mode
	-- colorscheme tokyonight-night -- colorscheme for neovide
end

-- telescope config
vim.cmd([[hi TelescopeNormal guifg=red guibg=blue]])
vim.cmd([[hi TelescopePrompt guifg=cyan]])
vim.cmd([[hi TelescopeResults guifg=blue]])

-- Hide Bufferline and Lualine when Alpha is open
vim.api.nvim_create_autocmd("User", {
    pattern = "AlphaReady",
    callback = function()
			vim.cmd([[set showtabline=0 laststatus=0]])
    end
})

-- Show bufferline and Lualine when leaving Alpha
vim.api.nvim_create_autocmd("BufUnload", {
    buffer = 0,
    callback = function()
		vim.cmd([[set showtabline=2 laststatus=2]])
    end
})

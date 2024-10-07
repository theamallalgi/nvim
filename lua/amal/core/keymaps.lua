--  ▄ •▄ ▄▄▄ . ▄· ▄▌• ▌ ▄ ·.  ▄▄▄·  ▄▄▄·.▄▄ ·
--  █▌▄▌▪▀▄.▀·▐█▪██▌·██ ▐███▪▐█ ▀█ ▐█ ▄█▐█ ▀.
--  ▐▀▀▄·▐▀▀▪▄▐█▌▐█▪▐█ ▌▐▌▐█·▄█▀▀█  ██▀·▄▀▀▀█▄
--  ▐█.█▌▐█▄▄▌ ▐█▀·.██ ██▌▐█▌▐█ ▪▐▌▐█▪·•▐█▄▪▐█
--  ·▀  ▀ ▀▀▀   ▀ • ▀▀  █▪▀▀▀ ▀  ▀ .▀    ▀▀▀▀

-- important remaps
vim.api.nvim_set_keymap('i', '<Up>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Left>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '', { noremap = true, silent = true })

-- general
vim.keymap.set("n", "zz", ":ZenMode<CR>", { silent = true }) -- neotree reveal with (ctrl+n)
vim.keymap.set("n", "<Leader>s", ":write<CR>", { silent = true }) -- saves the file with (space-s)
vim.keymap.set("n", "Q", "<C-W>q") -- quits the window/screen with (shift+q) or (Q)
vim.keymap.set("n", "<Leader>h", ":noh<CR>", { silent = true }) -- clears search highlights (space+h)
vim.keymap.set("n", "<leader>/", ":normal gcc<CR><DOWN>", { silent = true, desc = "[/] Toggle comment line" }) -- comments the line with (space+/) or uncomments it

-- neotree config
vim.keymap.set("n", "<C-b>", ":Neotree position=left dir=%:p:h:h reveal_file=%:p<CR>y<CR>", { silent = true })
vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle<CR>", { silent = true }) -- neotree reveal with (ctrl+n)

-- split screen configs
vim.keymap.set("n", "vv", "<C-W>v") -- vertical split with (vv)
vim.keymap.set("n", "ss", "<C-W>s") -- horizontal split with (ss)
vim.keymap.set("n", "C-j", "<C-w>j") -- jumps to the bottom split with (ctrl+j)
vim.keymap.set("n", "C-k", "<C-w>k") -- jumps to the top split with (ctrl+k)
vim.keymap.set("n", "C-h", "<C-w>h") -- jumps to the left split with (ctrl+h)
vim.keymap.set("n", "C-l", "<C-w>l") -- jumps to the right split with (ctrl+l)

-- indentation (in visual mode)
vim.keymap.set("v", "<Tab>", ">gv") -- tab spaces with (tab)
vim.keymap.set("v", "<S-Tab>", "<gv") -- negative tab spaces with (shit-tab)

-- buffer and tab config (with bufferline)
vim.keymap.set("n", "<Leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- opens new tab
vim.keymap.set("n", "<Leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- closes current tab
vim.keymap.set("n", "<Leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- opens buff in new tab
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true }) -- change the buffers with (ctrl+tab)

-- telescope keymaps
-- vim.keymap.set("n", "<Leader>o", ":Telescope oldfiles<CR>", { silent = true }) -- shows old files in telescope (space-o)
-- vim.keymap.set("n", "<Leader>b", ":Telescope Buffers<CR>", { silent = true }) -- change the buffers with (ctrl+tab)


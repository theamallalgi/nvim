--  ▄ •▄ ▄▄▄ . ▄· ▄▌• ▌ ▄ ·.  ▄▄▄·  ▄▄▄·.▄▄ ·
--  █▌▄▌▪▀▄.▀·▐█▪██▌·██ ▐███▪▐█ ▀█ ▐█ ▄█▐█ ▀.
--  ▐▀▀▄·▐▀▀▪▄▐█▌▐█▪▐█ ▌▐▌▐█·▄█▀▀█  ██▀·▄▀▀▀█▄
--  ▐█.█▌▐█▄▄▌ ▐█▀·.██ ██▌▐█▌▐█ ▪▐▌▐█▪·•▐█▄▪▐█
--  ·▀  ▀ ▀▀▀   ▀ • ▀▀  █▪▀▀▀ ▀  ▀ .▀    ▀▀▀▀

-- important remaps
-- vim.api.nvim_set_keymap('i', '<Up>', '', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<Down>', '', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<Left>', '', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<Right>', '', { noremap = true, silent = true })

-- general
vim.keymap.set("n", "zz", ":ZenMode<CR>", { silent = true }) -- neotree reveal with (ctrl+n)
vim.keymap.set("n", "<Leader>s", ":write<CR>", { silent = true }) -- saves the file with (space-s)
vim.keymap.set("n", "Q", "<C-W>q") -- quits the window/screen with (shift+q) or (Q)
vim.keymap.set("n", "<Leader>h", ":noh<CR>", { silent = true }) -- clears search highlights (space+h)
vim.keymap.set("n", "<leader>/", ":normal gcc<CR><DOWN>", { silent = true, desc = "[/] Toggle comment line" }) -- comments the line with (space+/) or uncomments it
vim.keymap.set("n", "<C-a>", "<cmd>Alpha<cr>", { silent = true }) -- opens the dashboard (alpha)
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" }) -- clear search with <esc>

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

-- telescope keymaps
-- vim.keymap.set("n", "<Leader>o", ":Telescope oldfiles<CR>", { silent = true }) -- shows old files in telescope (space-o)
-- vim.keymap.set("n", "<Leader>b", ":Telescope Buffers<CR>", { silent = true }) -- change the buffers with (ctrl+tab)

-- move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- move lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- tabs and buffers
vim.keymap.set("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
vim.keymap.set("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
vim.keymap.set("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
vim.keymap.set("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })

local normal_hl = vim.api.nvim_get_hl_by_name("Normal", true)

local purple1 = "#333352"
local purple2 = "#232338"
local purple3 = "#12121c"
local red1 = "#ba3648"
local green1 = "#37ad39"
local blue1 = "#0985de"
local blue3 = "#313244"
local black = "#1a1b26"
local white = "#edecee"
local red = "#ff6767"
local green = "#61ffca"
local blue = "#a277ff"
local magenta = "#a277ff"
local cyan = "#61ffca"
local yellow = "#ffca85"
local orange = "#ff7b7b"
local gray = "#29263c"
local darkgray = "#15141b"
local lightgray = "#433e62"
local inactivegray = "#3b4261"
local lightergray = "#776eae"

-- prompt
vim.api.nvim_set_hl(0, "TelescopePromptBorder", {
	fg = magenta,
	bg = darkgray,
})

vim.api.nvim_set_hl(0, "TelescopePromptNormal", {
	fg = blue,
	bg = gry,
})

vim.api.nvim_set_hl(0, "TelescopePromptTitle", {
	fg = blue,
})

vim.api.nvim_set_hl(0, "TelescopePromptCounter", {
	fg = inactivegray,
})

vim.api.nvim_set_hl(0, "TelescopePromptPrefix", {
	fg = green,
})

-- results
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", {
	fg = magenta,
	bg = darkgray,
})

vim.api.nvim_set_hl(0, "TelescopeResultsNormal", {
	fg = lightergray,
	bg = darkgray,
})

vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {
	fg = magenta,
})

vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", {
	fg = orange,
})

-- preview
vim.api.nvim_set_hl(0, "TelescopePreviewBorder", {
	fg = magenta,
	bg = darkgray,
})

vim.api.nvim_set_hl(0, "TelescopePreviewNormal", {
	fg = white,
	bg = darkgray,
})

vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {
	fg = magenta,
})

-- selection
vim.api.nvim_set_hl(0, "TelescopeSelection", {
	fg = magenta,
	-- bg = gray,
})
vim.api.nvim_set_hl(0, "TelescopeMatching", {
	fg = green,
})

-- Hint: use `:h <option>` to figure out the meaning if needed
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.terminal_color = 17

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.iskeyword:append("-")
vim.opt.iskeyword:append("_")
vim.opt.mouse = "a" -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 2 -- number of visual spaces per TAB
vim.opt.softtabstop = 2 -- number of spacesin tab when editing
vim.opt.shiftwidth = 2 -- insert 4 spaces on a tab
vim.opt.expandtab = true -- tabs are spaces, mainly because of python

--line wrapping
vim.opt.wrap = true -- display lines as one long line

-- UI config
vim.opt.number = true -- show absolute number
vim.opt.relativenumber = true -- add numbers to each line on the left side
vim.opt.cursorline = true -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true -- open new vertical split bottom
vim.opt.splitright = true -- open new horizontal splits right
vim.opt.termguicolors = true -- enabl 24-bit RGB color in the TUI
--vim.opt.signcolumn = "yes"          -- always show the sign column, otherwise it would shift the text each time
--vim.opt.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Searching
vim.opt.incsearch = true -- search as characters are entered
--vim.opt.hlsearch = true            -- do not highlight matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true -- but make it case sensitive if an uppercase is entered
vim.g.python3_host_prog = "/usr/bin/python3"

vim.cmd([[hi NvimTreeIndentMarker guifg=#3FC5FF]])

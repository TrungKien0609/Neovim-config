local opts = { noremap = true, silent = false }
-- noremap for not reference keymap
-- silent for not display command name at bottom
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

vim.g.mapleader = " " -- set leader key
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigaton
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- use jk to exit insert mode
keymap("i", "jk", "<ESC>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- clear search highlight
keymap("n", "<leader>nh", ":nohl<CR>", { noremap = true, silent = true, desc = "Clear search highlight" })

-- increase/decrease number,...
keymap("n", "<leader>+", "<C-a>", { noremap = true, silent = true, desc = "Increase number" })
keymap("n", "<leader>-", "<C-x>", { noremap = true, silent = true, desc = "decrease number" })

--window management
keymap("n", "<leader>sv", "<C-w>v", { noremap = true, silent = true, desc = "Split vertical window" }) -- split window vertical
keymap("n", "<leader>sh", "<C-w>s", { noremap = true, silent = true, desc = "Split vertical horizontal" }) -- split window horizontal
keymap("n", "<leader>se", "<C-w>=", { noremap = true, silent = true, desc = "Make split windowns equal" }) -- make split equal size
keymap("n", "<leader>sx", "<cmd>close<CR>", { noremap = true, silent = true, desc = "Close current window"}) -- close current splis

-- tab management
keymap("n", "<leader>to", "<cmd>tabnew<CR>", { noremap = true, silent = true, desc = "Open new tab"}) -- open new tab
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { noremap = true, silent = true, desc = "Close current tab"}) -- close current tab
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { noremap = true, silent = true, desc = "Go to next tab"}) --  go to next tab
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { noremap = true, silent = true, desc = "Go to previous tab"}) --  go to previous tab
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { noremap = true, silent = true, desc = "Move current buffer to new tab "}) --  move current buffer to new tab

-- Navigate buffers
-- still do not know how to use
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

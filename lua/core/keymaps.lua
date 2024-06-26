vim.g.mapleader = " "

local keymap = vim.keymap

-- 插入模式
keymap.set("i","jk","<ESC>")

-- 视觉模式
keymap.set("v", "J", "m '>+1<CR>gv=gv")
keymap.set("v", "K", "m '<-2<CR>gv=gv")

-- 正常模式
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

-- 去掉高亮
keymap.set("n", "<leader>nh", ":nphl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>fo", ":NvimTreeFocus<CR>")

-- lspsaga
keymap.set('n','<leader>t', ":Lspsaga term_toggle<CR>")
keymap.set('n','<leader>outline', ":Lspsaga outline<CR>")

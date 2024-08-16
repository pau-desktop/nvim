-----------------
-- Normal Mode --
-----------------

-- Correct start_end file navigation
vim.keymap.set("n", "G", "G$")
vim.keymap.set("n", "gg", "gg0")

-- Yank till eol
vim.keymap.set("n", "Y", "y$")

-- Invert number settings
vim.keymap.set("n", "<C-n>", "<cmd>set invnu invrnu<cr>", { desc = "Invert number settings" })

-- Increment / decrement numbers
vim.keymap.set("n", "<leader>+", "<C-A>", { desc = "Increment by 1" })
vim.keymap.set("n", "<leader>-", "<C-X>", { desc = "Decrement by 1" })

vim.keymap.set("n", "<leader>q", "<cmd>bd!<cr><cmd>q!<cr>", { desc = "[Q]uit buffer" })

-- Window management
vim.keymap.set("n", "<leader>dh", "<cmd>split<cr>", { desc = "[D]ivide [H]orizontally" })
vim.keymap.set("n", "<leader>dv", "<cmd>vsplit<cr>", { desc = "[D]ivide [V]ertically" })

-- Pane navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate Left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate Down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate Up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate Right" })

-- Center windows on page navigation
vim.keymap.set("n", "<C-D>", "<C-D>zz")
vim.keymap.set("n", "<C-U>", "<C-U>zz")

-----------------
-- Visual Mode --
-----------------

-- Replace visually selected text (with confirmation) or replace globally
vim.keymap.set("v", "<leader>r", '"hy:%s/<C-r>h/', { desc = "Replace" })

-- Move lines Vertically
vim.keymap.set("v", "J", "<cmd>m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "K", "<cmd>m '>-2<cr>gv=gv", { desc = "Move Up" })

-- Sort lines
vim.keymap.set("v", "<leader>s", ":sort<cr>", { desc = "Sort" })

-- Indenting
vim.keymap.set("v", "<", "<gv", { desc = "Indenting" })
vim.keymap.set("v", ">", ">gv", { desc = "Indenting" })

-----------------
-- Insert Mode --
-----------------

-- Exit Insert Mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit Insert Mode" })

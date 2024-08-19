-- Useful keymaps
vim.keymap.set("n", "G", "G$") -- Start of file
vim.keymap.set("n", "gg", "gg0") -- End of file
vim.keymap.set("n", "Y", "yg$") -- Y till eol
vim.keymap.set("n", "J", "mzJ`z") -- Join lines
vim.keymap.set("n", "<C-D>", "<C-D>zz") -- Center view
vim.keymap.set("n", "<C-U>", "<C-U>zz") -- Center view
vim.keymap.set("n", "n", "nzzzv") -- Center view
vim.keymap.set("n", "N", "Nzzzv") -- Center view
vim.keymap.set("n", "Q", "<nop>") -- Disable Q
vim.keymap.set("i", "<C-c>", "<Esc>") -- Replicate <Esc>
                                                                                
-- Buffer management                                                            
vim.keymap.set("n", "<leader>q", vim.cmd.bd, { desc = "[Q]uit buffer" })    
vim.keymap.set("n", "<Tab>", vim.cmd.bn) -- Buffer next
vim.keymap.set("n", "<S-Tab>", vim.cmd.bp) -- Buffer previous

-- Using the void register
vim.keymap.set("n", "<leader>d", "\"_d", { desc = "[D]elete to void" })
vim.keymap.set("v", "<leader>d", "\"_d", { desc = "[D]elete to void" })
vim.keymap.set("x", "<leader>p", "\"_dp", { desc = "[P]aste & repeat" })

-- Replace visually selected text (with confirmation) or replace globally
vim.keymap.set("v", "<leader>r", "\"hy:%s/<C-r>h/", { desc = "[R]eplace text" })

vim.keymap.set("v", "<", "<gv", { desc = "Indenting" })
vim.keymap.set("v", ">", ">gv", { desc = "Indenting" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Exit Insert Mode" })

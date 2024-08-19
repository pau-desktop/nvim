config = function()
  require("auto-session").setup({
    auto_session_enabled = false,
    auto_restore_enabled = false,
    auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
  })
  vim.keymap.set("n", "<leader>wd", "<cmd>SessionDelete<CR>", { desc = "[W]orkspace [D]elete" })
  vim.keymap.set("n", "<leader>wf", "<cmd>SessionSearch<CR>", { desc = "[W]orkspace [F]ind" })
  vim.keymap.set("n", "<leader>wp", "<cmd>SessionPurgeOrphaned<CR>", { desc = "[W]orkspace [P]urge" })
  vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "[W]orkspace [R]estore" })
  vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "[W]orkspace [S]ave" })
end

return {
  "rmagatti/auto-session",
  lazy = false,
  config = config,
}

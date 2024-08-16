return {
  "folke/trouble.nvim",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = { focus = true, },
  keys = {
    { "<leader>xd", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open diagnostics" },
    { "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open quickfix" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Open loclist" },
    { "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Open todo" },
  }
}

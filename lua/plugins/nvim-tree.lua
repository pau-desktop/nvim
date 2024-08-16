local config = function()
  local nvimtree = require("nvim-tree")
  -- recommended settings from nvim-tree documentation
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1
  nvimtree.setup({
    view = {
      width = 30,
      number = true,
      relativenumber = true,
    },
    renderer = {
      indent_markers = {
        enable = true,
      },
    },
    -- disable window_picker for
    -- explorer to work well with
    -- window splits
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    filters = {
      custom = { ".DS_Store" },
    },
    git = {
      ignore = false,
    },
  })
  vim.keymap.set("n", "<leader>te", "<cmd>NvimTreeFocus<CR>", { desc = "[T]ree [E]xplorer" })
  vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFindFile<CR>", { desc = "[T]ree [F]ind file" })
  vim.keymap.set("n", "<leader>td", "<cmd>NvimTreeClose<CR>", { desc = "[T]ree [D]elete" })
  vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>", { desc = "[T]ree [C]ollapse" })
end

return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = config,
}

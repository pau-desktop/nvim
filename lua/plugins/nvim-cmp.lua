local config = function()
  local cmp = require "cmp"
  local luasnip = require "luasnip"
  cmp.setup({
    snippet = {
      expand = function(args)
      luasnip.lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-p>"] = cmp.mapping.select_prev_item(),
      ["<Tab>"] = cmp.mapping.select_next_item(),
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      ["<C-Y>"] = cmp.mapping.confirm { select = true },
      ["<CR>"] = cmp.mapping.confirm { select = true },
      ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources(
      {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }
    ),
    completion = {
      completeopt = "menu,menuone,noinsert,noselect,shortest",
      autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged },
    },
  })
  -- LSP setup
  local lspconfig = require("lspconfig")
  lspconfig.pyright.setup {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
  }
end

return {
  "hrsh7th/nvim-cmp",
  lazy = false,
  event = "InsertEnter",
  dependencies = {
    "L3MON4D3/LuaSnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "neovim/nvim-lspconfig",
    "saadparwaiz1/cmp_luasnip",
  },
  config = config,
}

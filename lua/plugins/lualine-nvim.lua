local config = function()
  local theme = require("lualine.themes.nightfox")
  local lazy_status = require("lazy.status")
  theme.normal.c.bg = nil
  require("lualine").setup {
    options = {
    theme = theme,
    globalstatus = true,
    },
    sections = {
      lualine_a = {
        "buffers",
        "mode",
      },
    },
  }
end

return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = config,
}

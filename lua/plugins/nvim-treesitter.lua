local config = function()
	require("nvim-treesitter.configs").setup({
		indent = { enable = true	},
		autotag = {	enable = true },
		ensure_installed = {
			"bash",
			"lua",
			"gitignore",
      "cpp",
      "c",
      "java",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	})
end

return {
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
	"nvim-treesitter/nvim-treesitter",
  lazy = false,
  config = config,
}

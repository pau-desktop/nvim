-- Set <leader> to <space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Lazy installation if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("config.autocmds")
require("config.options")
require("config.keymaps")

-- Plugin integration (comment if undesired)
local plugins = "plugins"

local opts = {
    defaults = {
        -- Will not load plugins by default
        lazy = true,
    },
    install = {
        colorscheme = { "nightfox" },
    },
    rtp = {
        disabled_plugins = {
            "gzip",
            "matchit",
            "matchparen",
            "netrw",
            "netrwPlugin",
            "tarPlugin",
            "tohtml",
            "tutor",
            "zipPlugin",
        },
    },
    checker = {
        enabled = true,
        notify = false,
	},
    change_detection = {
        notify = false,
    },
}

require("lazy").setup(plugins,opts)

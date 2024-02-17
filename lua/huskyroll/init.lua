require("huskyroll.set")
require("huskyroll.remap")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        'folke/tokyonight.nvim', 
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 
            'nvim-lua/plenary.nvim',
        }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", 
        }
    }
}
local ops = {}

require("lazy").setup(plugins, opts)

local builtin =  require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

local configs = require("nvim-treesitter.configs")
configs.setup({
    ensure_installed = {
        'lua',
        'javascript',
        'html',
        'go',
        'swift',
        'gdscript',
        'python',
        'json',
        'dockerfile',
        'css',
        'cpp',
        'yaml'
    },
    highlight = { enable = true },
    indent = { enable = true },
})


require("tokyonight").setup()
vim.cmd.colorscheme("tokyonight")

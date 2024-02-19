return {
    'folke/tokyonight.nvim', 
    lazy = false,
    priority = 1000,
    opts = {
        style = 'storm',
        terminal_colors = true,
        styles = {
            sidebars = 'dark',
            floats = 'dark'
        }
    },
    config = function()
        vim.cmd.colorscheme('tokyonight')
    end
}

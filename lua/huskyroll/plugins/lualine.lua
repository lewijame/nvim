return {
    'nvim-lualine/lualine.nvim',
    opts = {
        theme = 'palenight'
    },
    config = function(_,opts)
        require('lualine').setup()
    end
}

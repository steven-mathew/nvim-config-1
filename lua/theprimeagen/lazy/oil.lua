return {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup()
    end,
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*"
}

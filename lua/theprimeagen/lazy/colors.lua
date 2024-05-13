vim.opt.termguicolors = true

return {
    {
        "blazkowolf/gruber-darker.nvim",
        dependencies = { "tjdevries/colorbuddy.nvim" },
        config = function()
            -- require("gruber_darker").setup()

            require("colorbuddy").colorscheme "gruber-darker"
            -- require("colorbuddy").colorscheme "mellifluous"
            -- require("colorizer").setup()

            local c = require("colorbuddy.color").colors
            local Group = require("colorbuddy.group").Group
            local g = require("colorbuddy.group").groups
            local s = require("colorbuddy.style").styles
            Group.new('MatchParen', c.red:light():light(), c.none, s.bold)
            Group.new("Normal", c.none, c.none)
        end
    },
    --{
    --    "tjdevries/colorbuddy.nvim",
    --    depends = "",
    --    config = function()
    --        require("colorbuddy").colorscheme "gruber-darker"
    --        -- require("colorbuddy").colorscheme "mellifluous"
    --        -- require("colorizer").setup()

    --        local c = require("colorbuddy.color").colors
    --        local Group = require("colorbuddy.group").Group
    --        local g = require("colorbuddy.group").groups
    --        local s = require("colorbuddy.style").styles
    --        Group.new('MatchParen', c.red:light():light(), c.none, s.bold)
    --        Group.new("Normal", c.none, c.none)
    --    end
    --}
}

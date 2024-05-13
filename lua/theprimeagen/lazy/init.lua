return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },

    'ThePrimeagen/harpoon',

    -- "lukas-reineke/indent-blankline.nvim",
    { 'gpanders/nvim-parinfer',      ft = { 'lisp', 'fennel', 'clojure', 'racket', 'pddl' } },
    "tpope/vim-repeat",

    "folke/flash.nvim",


    "tamago324/lir-git-status.nvim",
    {
        "tamago324/lir-mmv.nvim",
        cond = function()
            return vim.fn.executable "mmv" == 1
        end,
    },

    'echasnovski/mini.nvim',


    "github/copilot.vim",
    "eandrju/cellular-automaton.nvim",
    "gpanders/editorconfig.nvim",
}

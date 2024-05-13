return {
    --    "nvim-treesitter/nvim-treesitter",
    --    build = ":TSUpdate",
    --    config = function()
    --        require("nvim-treesitter.configs").setup({
    --            -- A list of parser names, or "all"
    --            ensure_installed = {
    --            "c", "lua", "rust", "bash", "racket", "haskell"
    --            },
    --
    --            -- Install parsers synchronously (only applied to `ensure_installed`)
    --            sync_install = false,
    --
    --            -- Automatically install missing parsers when entering buffer
    --            -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
    --            -- auto_install = true,
    --
    --            indent = {
    --                enable = true
    --            },
    --
    --            highlight = {
    --                -- `false` will disable the whole extension
    --                enable = true,
    --
    --                -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    --                -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
    --                -- Using this option may slow down your editor, and you may see some duplicate highlights.
    --                -- Instead of true it can also be a list of languages
    --                additional_vim_regex_highlighting = { "markdown" },
    --            },
    --        })
    --
    --        local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    --        treesitter_parser_config.templ = {
    --            install_info = {
    --                url = "https://github.com/vrischmann/tree-sitter-templ.git",
    --                files = { "src/parser.c", "src/scanner.c" },
    --                branch = "master",
    --            },
    --        }
    --
    --        vim.treesitter.language.register("templ", "templ")
    --    end


    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
        return {
            ensure_installed = { "c", "lua", "rust", "bash", "racket", "haskell", "vim", "vimdoc" },


            highlight = {
                enable = true,
                use_languagetree = true,
            },

            indent = { enable = true },
        }
    end,
    config = function(_, opts)
        if type(opts.ensure_installed) == "table" then
            local added = {}
            opts.ensure_installed = vim.tbl_filter(function(parser)
                if added[parser] then return false end
                added[parser] = true
                return true
            end, opts.ensure_installed)
        end
        require("nvim-treesitter.configs").setup(opts)
    end,
}

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- A list of parser names, or "all" (the listed parsers MUST always be installed)
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "javascript",
                "typescript",
                "css",
                "html",
                "json",
            },

            sync_install = false,

            --auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}

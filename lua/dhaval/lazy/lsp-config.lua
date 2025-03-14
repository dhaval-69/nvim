return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        'hrsh7th/cmp-nvim-lsp',
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require("mason").setup()
        require("mason-lspconfig").setup({
            -- ensure_installed = { "lua_ls" },
        })
        require("mason-lspconfig").setup_handlers {
            function (server_name) -- default handler (optional)
                require("lspconfig")[server_name].setup { capabilities = capabilities }
            end,
        }
    end,
}

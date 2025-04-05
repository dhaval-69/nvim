return {
    'brenoprata10/nvim-highlight-colors',
    dependencies = {
        'hrsh7th/nvim-cmp',
    },
    config = function()
        vim.opt.termguicolors = true

        require('nvim-highlight-colors').setup({
            ---Highlight tailwind colors, e.g. 'bg-blue-500'
            enable_tailwind = true,
        })
        require("cmp").setup({
            formatting = {
                format = require("nvim-highlight-colors").format
            },
        })
        --require("nvim-highlight-colors").turnOff()
    end
}

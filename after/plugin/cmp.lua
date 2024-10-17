local cmp = require"cmp"

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),

    },
    sources = {
        {name = "nvim_lsp"},
        {name = "luasnip"},
        {name = "path"},
        {name = "buffer", keyword_length = 3},
        {name = "nvim_lua"},
    }
})



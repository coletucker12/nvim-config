-- Plugin: LuaSnip
-- https://github.com/L3MON4D3/LuaSnip
return {
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function()
            local ls = require("luasnip")

            -- JavaScript Snippets
            ls.filetype_extend("javascript", { "jsdoc" })

            require("luasnip.loaders.from_vscode").load()
        end,
    }
}

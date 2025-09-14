return {
    config = function()
        -- lazy loads vscode like snippets from luasnip plugin
        require("luasnip.loaders.from_vscode").lazy_load()
    end,
}

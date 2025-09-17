-- Keymaps of nvim-cmp

local cmp = require("cmp")
local luasnip = require("luasnip")

return {
    ["<C-l>"] = cmp.mapping.select_next_item(), -- Next suggestion
    ["<C-h>"] = cmp.mapping.select_prev_item(), -- Previous suggestion
    ["<C-k>"] = cmp.mapping.scroll_docs(-4), -- Scroll docs up
    ["<C-j>"] = cmp.mapping.scroll_docs(4), -- Scroll docs down
    ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion manually
    ["<C-e>"] = cmp.mapping.abort(), -- Cancel completion
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection, select if none
    ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_next_item() -- Cycle to next suggestion
        elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump() -- Expand or jump to next snippet placeholder
        else
            fallback() -- Fallback to default Tab behavior
        end
    end, { "i", "s" }), -- Apply in insert and select modes
    ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_prev_item() -- Cycle to previous suggestion
        elseif luasnip.jumpable(-1) then
            luasnip.jump(-1) -- Jump to previous snippet placeholder
        else
            fallback() -- Fallback to default Shift-Tab behavior
        end
    end, { "i", "s" }),
}


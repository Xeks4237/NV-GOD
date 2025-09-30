-- Keymaps for which-key.nvim

return {
    -- Keymap to open open popup with all keymaps availible
    vim.keymap.set("n", "<leader>?", function()
        require("which-key").show("", { mode = "n" })
    end, { desc = "Show All Keymaps" })
}


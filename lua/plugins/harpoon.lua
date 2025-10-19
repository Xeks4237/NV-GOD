return {
    -- harpoon: allows to fast switch between buffers/files using only keyboard
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    name = "harpoon",
    lazy = true,
    opts = {
        settings = {
            save_on_toggle = true, -- Save marks when toggling the quick menu
            sync_on_ui_close = true, -- Sync marks when closing the UI
        },
    },
}

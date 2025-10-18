return {
    -- nvim-dap-ui: Adds beautifull UI for nvim-dap
    "rcarriga/nvim-dap-ui",
    name = "nvim-dap-ui",
    lazy = true,
    keys = {
        -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
        {
            "<F7>",
            function()
                require("dapui").toggle()
            end,
            desc = "Debug: Open UI",
        },
    },
    opts = {
    -- Dap UI setup
    -- For more information, see :help nvim-dap-ui
        -- Set icons to characters that are more likely to work in every terminal.
        -- Feel free to remove or use ones that you like more! :)
        -- Don't feel like these are good choices.
        icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
        controls = {
            icons = {
                disconnect = "",
                pause = "",
                play = "",
                run_last = "",
                step_back = "",
                step_into = "",
                step_out = "",
                step_over = "",
                terminate = ""
            },
        },
    },
}


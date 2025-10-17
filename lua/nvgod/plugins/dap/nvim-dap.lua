-- Shows how to use the nvim-dap plugin to debug your code.

return {
    "mfussenegger/nvim-dap",
    name = "nvim-dap",
    lazy = true,
    -- event = "",
    dependencies = {
        -- Creates a beautiful debugger UI
        "rcarriga/nvim-dap-ui",

        -- Required dependency for nvim-dap-ui
        "nvim-neotest/nvim-nio",
    },
    keys = {
        -- Basic debugging keymaps, feel free to change to your liking!
        {
            "<F5>",
            function()
                require("dap").continue()
            end,
            desc = "Debug: Start/Continue",
        },
        {
            "<F1>",
            function()
                require("dap").step_into()
            end,
            desc = "Debug: Step Into",
        },
        {
            "<F2>",
            function()
                require("dap").step_over()
            end,
            desc = "Debug: Step Over",
        },
        {
            "<F3>",
            function()
                require("dap").step_out()
            end,
            desc = "Debug: Step Out",
        },
        {
            "<leader>db",
            function()
                require("dap").toggle_breakpoint()
            end,
            desc = "[d]ebug: Toggle [b]reakpoint",
        },
        {
            "<leader>dB",
            function()
                require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
            end,
            desc = "[d]ebug: Set [B]reakpoint",
        },
        -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
        {
            "<F7>",
            function()
                require("dapui").toggle()
            end,
            desc = "Debug: Open UI",
        },
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        -- Dap UI setup
        -- For more information, see |:help nvim-dap-ui|
        dapui.setup {
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
        }

        -- Change breakpoint icons amd colors
        vim.api.nvim_set_hl(0, "DapBreak", { fg = "#ff4040" })
        vim.api.nvim_set_hl(0, "DapStop", { fg = "#ff3535" })
        local breakpoint_icons = vim.g.have_nerd_font
                and { Breakpoint = "", BreakpointCondition = "", BreakpointRejected = "", LogPoint = "", Stopped = "" }
            or { Breakpoint = "●", BreakpointCondition = "⊜", BreakpointRejected = "⊘", LogPoint = "◆", Stopped = "⭔" }
        for type, icon in pairs(breakpoint_icons) do
            local tp = "Dap" .. type
            local hl = (type == "Stopped") and "DapStop" or "DapBreak"
            vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl })
        end

        dap.listeners.after.event_initialized["dapui_config"] = dapui.open
        dap.listeners.before.event_terminated["dapui_config"] = dapui.close
        dap.listeners.before.event_exited["dapui_config"] = dapui.close

        -- NOTE: If you added additional nvim-dap plugin for other language
        -- Then add require("plugun-name").setup() for this plugin here:
        require("dap-go").setup()
    end,
}


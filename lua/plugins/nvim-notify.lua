return {
    "rcarriga/nvim-notify",
    name = "nvim-notify",
    lazy = false,
    config = function()
        vim.notify = require "notify"
        require("notify").setup {
            background_colour = "NotifyBackground",
            fps = 60,
            icons = {
                DEBUG = "",
                ERROR = "",
                INFO = "",
                TRACE = "✎",
                WARN = "",
            },
            level = 2, -- INFO and above
            minimum_width = 25,
            render = "default",
            stages = "slide",
            time_formats = {
                notification = "%T",
                notification_history = "%FT%T",
            },
            timeout = 2500,
            top_down = false,
        }

        -- Override LSP progress handler
        vim.lsp.handlers["$/progress"] = function(_, result, ctx)
            local client = vim.lsp.get_client_by_id(ctx.client_id)
            local client_name = client and client.name or "unknown"
            local message = result.value.message or "Working..."
            local kind = result.value.kind or "report"
            local level_map = {
                begin = "INFO",
                report = "INFO",
                end_ = "INFO",
            }
            vim.notify(message, level_map[kind] or "INFO", {
                title = string.format("%s: %s", client_name, result.title or "LSP Progress"),
                timeout = 2000,
            })
        end

        -- Function to capture command output and send to nvim-notify
        vim.notify_cmd_output = function(cmd)
            local output = vim.fn.execute(cmd)
            local lines = vim.split(output, "\n", { trimempty = true })
            for _, line in ipairs(lines) do
                vim.notify(line, "INFO", {
                    title = "Command: " .. cmd,
                    timeout = 3000,
                })
            end
        end

        -- Optional: Create a command to call the function
        vim.api.nvim_create_user_command("NotifyCmd", function(opts)
            vim.notify_cmd_output(opts.args)
        end, { nargs = 1 })
    end,
}

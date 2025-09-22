return {
    popup = {
        position = {
            row = 10, -- 0-based row index
            col = "50%", -- can be a number or a percentage
        },
        size = {
            width = "70%", -- can be a number or a percentage
            height = "clamp(1, 20, 0.5)", -- clamp(1, 20, 0.5) -> 1 <= height <= 20, but not more than 50% of screen height
        },
        border = {
            style = "rounded", -- "single", "double", "rounded", "solid", "shadow"
            padding = { 0, 0 }, -- Paddings {vertical, horizontal}
            text = {
                top = " Command ", -- Label
                top_align = "center", -- "left", "center", "right"
            },
        },
        win_options = {
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
        },
        buf_options = {
            filetype = "fine-cmdline",
            buftype = "prompt",
        },
    },
    hooks = {
        -- Runs before the input is mounted
        before_mount = function()
            -- Do something before input is mounted
        end,
        -- Runs after the input is mounted
        after_mount = function(input)
            -- Do something after input is mounted
        end,
        -- Runs before the input is unmounted
        before_unmount = function(input)
            -- Do something before unmounting
        end,
        -- Runs after the input is unmounted
        after_unmount = function()
            -- Do something after unmounting
        end,
        -- Runs when the input is about to be mounted again (e.g., after <C-c> and then <C-r>)
        before_remount = function(input)
            -- Do something before remounting
        end,
    },
    -- Command to run when user presses <CR> (Enter)
    on_confirm = function(input)
        -- Default behavior: execute the command
        -- You can override it here if needed
        local cmd = input:get_input()
        vim.cmd(cmd)
    end,
}


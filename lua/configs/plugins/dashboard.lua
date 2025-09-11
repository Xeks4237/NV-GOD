-- P.S You can instead of logo for your nvim add anime girl picture if you want :3

-- Local Function sets "logo" to be equal to custom ASCII art
-- Then adds paddings to it(to center it on screen) 
-- After it in end return() to give result to get_logo()
-- to use it in actuall
local function get_logo()
    -- ASCII art for Neovim Dashboard
    -- P.S logo for NV-GOD gonna be made closer to v1.0
    -- but for now it's a just generic "NEOVIM" word made by ai XD
    local logo = [[
        ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
        ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
        ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
        ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
        ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
        ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]]
    -- Adds 8 empty lines above the logo and 2 below to center the logo
    return vim.split(string.rep("\n", 8) .. logo .. "\n\n", "\n")
end

-- First part of this file, sets needed to us ASCII art in get_logo()
-- And in this return{} we set all configuration for dashboard-nvim plugin
return {
    -- First we need to set one of default builtin schemes/themes to work with, there are only 2 of them
    -- Both of the themes/schemes has their own settings slightly different from other, in this file I am using a "doom" because it's more commonly used in other distros
    -- To check a more about this scheme/theme settings for dashboard please check a github repo of dashboard dev:
         -- https://github.com/nvimdev/dashboard-nvim
    -- First theme/scheme is a "doom" :
        -- Simply, it's a just Logo above and some actionable buttons like, "New File" or "Quit" below, And with a key to use this button in front of it.
    -- Second theme/scheme is a "hyper":
        -- Simply, it's a just Logo above and sections with a different lists below, like for example "recent files" or "recently edited projects".
    theme = "doom",
    -- Set which elements you need to be hided in the dashboard screen
    hide = {
        -- Disable statusline in dashboard to avoid conflicts with plugins like lualine
        statusline = false,
        -- Hide winbar (if used) for "consistency"
        winbar = true,
        -- Hide a tabs line above for a cleaner look
        tabline = true,
        -- You can add more options to hide like, sidepanel of neo-tree plugin and others, but it's enough to make it work out of the box.
    },

    -- Main configuration for the dashboard
    config = {
        -- Sets the "header" to be get_logo() which has our ASCII art with some settings like paddings
        header = get_logo(),

        -- Define actionable buttons in center
        center = {
            {
                -- Button to create a new file
                -- First set it's icon
                icon = " ",
                -- Then set a short describtion which gonna be shown in front of a icon
                -- P.S first buttons describtion has a lot of spaces in end
                -- to make spacing beetween describtion and key of it bigger
                desc = "New File                     ",
                -- Then set a "key" which needed to be pressed to use this button
                key = "n",
                -- And in end most importantly, set a action which gonna maded after pressing a button
                -- In this case it opens a new buffer and enters insert mode
                action = "ene | startinsert",
            },
            {
                -- Button to find files using telescope
                icon = " ",
                desc = "Find File",
                key = "f",
                action = "Telescope find_files",
            },
            {
                -- Button to search text in files using telescope
                icon = " ",
                desc = "Find Text",
                key = "g",
                action = "Telescope live_grep", -- Opens Telescope live grep
            },
            {
                -- Button to access Neovim config files
                -- in ui of telescope
                icon = " ",
                desc = "Config",
                key = "c",
                -- Opens Telescope in config directory of nvim
                action = "Telescope find_files cwd=~/.config/nvim",
            },
            {
                -- Button to open lazy.nvim plugin manager
                icon = "󰒲 ",
                desc = "Lazy",
                key = "l",
                action = "Lazy",
            },
            {
                -- Button to open Mason package manager
                icons = "",
                desc = "Mason",
                key = "m",
                action = "Mason",
            },
            {
                -- Button to view recent files
                -- In UI of telescope
                icon = " ",
                desc = "Recent Files",
                key = "r",
                action = "Telescope oldfiles",
            },
            {
                -- Button to quit Neovim
                icon = " ",
                desc = "Quit",
                key = "q",
                action = function() vim.api.nvim_input("<cmd>qa<cr>") end, -- Executes :qa to quit
            },
        },
        -- Dynamic footer showing plugin stats in end
        footer = function()
            -- Get Lazy plugin manager statistics
            local stats = require("lazy").stats()
            -- Calculate startup time in milliseconds
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            -- Return footer text with plugin count and startup time
            return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
    },

    -- Initialize dashboard with "consistent" button formatting
    init = function()
        -- loop through center menu items to ensure "consistent" description length
        for _, button in ipairs(require("dashboard").setup().config.center) do
            -- pad description to 43 characters for alignment
            button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
            -- set keybinding format with padding
            button.key_format = "  %s"
        end
    end,

    -- Ensure dashboard re-opens after closing lazy.nvim UI
    setup = function()
        -- Check if current filetype is Lazy (indicating Lazy UI is open)
        if vim.o.filetype == "lazy" then
            -- Create autocommand to trigger dashboard after Lazy window closes
            vim.api.nvim_create_autocmd("WinClosed", {
                pattern = tostring(vim.api.nvim_get_current_win()),
                once = true, -- Run only once
                callback = function()
                    -- Schedule dashboard reopen to avoid timing issues
                    vim.schedule(function()
                        vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
                    end)
                end,
            })
        end
    end,
} -- End of Main return{}

-- P.S Dev of a dashbord plugin plans to add terminal pictures support in future
-- When it gonna happen I gonna update this file

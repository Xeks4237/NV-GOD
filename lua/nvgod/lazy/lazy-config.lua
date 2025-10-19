-- Configuration for lazy.nvim plugin manager
return {
    -- Behavior-Related Options
    checker = {
        -- Automatically check for plugin updates
        enabled = true,
        -- Check frequency (in seconds)
        frequency = 86400, -- Every 24 hours
        -- Notify about pending updates
        notify = true,
    },
    change_detection = {
        -- Automatically detect config file changes and reload
        enabled = true,
        -- Notify about detected changes
        notify = false,
    },
    -- Logging verbosity
    logging = {
        -- Log level for Lazy.nvim
        level = "warn", -- Options: "trace", "debug", "info", "warn", "error"
    },
    -- Throttle UI updates (affects performance, in milliseconds)
    -- bigger number = less lagging
    throttle = 25,
    -- Changes location of lazy-lock.json from
    -- default ~/.config/nvim/lazy-lock.json
    -- to ~/.config/nvim/lua/lazy/core/lazy-lock.json
    lockfile = "~/.config/nvim/lua/nvgod/lazy/lazy-lock.json",
    spec = {
        -- Sets a files/directorys in lua directory where
        -- lazy.nvim package manager loads files for plugins
        -- NOTE: Seperating plugins and colorschemes needed only for "consistency"
        { import = "nvgod.plugins" },
        { import = "nvgod.plugins.mason" },
        { import = "nvgod.plugins.treesitter" },
        { import = "nvgod.plugins.dap" },
        { import = "nvgod.plugins.cmp" },
        { import = "nvgod.colorschemes" },
        { import = "custom.init" },
        -- P.S olso it can have a table with paths to seperate files
    },
    -- UI Appearance Options
    ui = {
        -- Window size (width and height as percentage or pixels)
        size = {
            width = 0.9, -- 90% of screen width
            height = 0.9, -- 90% of screen height
        },
        -- Border style for the floating window
        border = "rounded", -- Options: "none", "single", "double", "rounded", "solid", "shadow"
        -- or a table like {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}
        -- Custom title for the window (requires border ~= "none")
        title = " Lazy.nvim ",
        -- Title alignment
        title_pos = "center", -- Options: "left", "center", "right"
        -- Background transparency (0 = opaque, 100 = fully transparent)
        backdrop = 60,
        -- Enable line wrapping for long text (e.g., descriptions, logs)
        wrap = true,
        -- Enable pill-shaped tabs for sections (Plugins, Profile, etc.)
        pills = true,
    },

    -- Custom Icons (for UI elements, useful for non-Nerd Font setups)
    icons = {
        -- General UI elements
        cmd = "⌘", -- Command icon
        config = "🛠", -- Config icon
        event = "📅", -- Event icon
        ft = "📂", -- Filetype icon
        init = "⚙", -- Init icon
        import = "📥", -- Import icon
        keys = "🗝", -- Keymap icon
        lazy = "💤", -- Lazy.nvim icon
        loaded = "●", -- Loaded plugin
        not_loaded = "○", -- Not loaded plugin
        plugin = "🔌", -- Plugin icon
        runtime = "💻", -- Runtime icon
        require = "📜", -- Require icon
        source = "📄", -- Source icon
        start = "🚀", -- Start icon
        task = "📌", -- Task icon
        list = { -- List item indicators
            "●",
            "➜",
            "★",
            "‒",
        },
        -- Status icons
        ok = "✓", -- Success status
        warn = "!", -- Warning status
        error = "✗", -- Error status
        -- Loading spinner animation
        dots = "⠋⠙⠹⠸⠼⠴⠦⠧⠇⠏",
    },

    performance = {
        -- Reset runtimepath to optimize startup
        reset = true,
        -- Cache settings (affects loading behavior)
        cache = {
            enabled = true,
        },
        -- RTP (runtimepath) optimization
        rtp = {
            -- Disable certain plugins to speed up startup
            disabled_plugins = {
                -- "gzip",
                -- "tutor",
            },
        },
    },
    -- Custom keymappings for the Lazy UI
    keys = {
        -- UI-specific keybindings (inside the Lazy window)
        browser = {
            -- Web browsers for opening plugin URLs
            { "chrome", "google-chrome %s" },
            { "firefox", "firefox %s" },
        },
    },
}

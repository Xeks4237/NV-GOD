return {
    -- Changes location of lazy-lock.json from
    -- default ~/.config/nvim/lazy-lock.json
    -- to ~/.config/nvim/lua/lazy/core/lazy-lock.json
    lockfile = "~/.config/nvim/lua/lazy/lazy-lock.json",
	spec = {
        -- Choses a files/directorys in lua directory where
        -- lazy.nvim package manager loads files
        -- P.S Seperating plugins and colorschemes needed
        -- only for "consistency"
		{ import = "lazy.plugins" },
        { import = "lazy.colorschemes" },
        -- P.S olso it can have a table with paths to seperate files
        -- for each plugin/colorscheme seperatly (but it makes this file to big and blooated)
	},
	checker = {
        -- Checks changes on files which lazy.mvim package manager uses to load plugins
        -- if "enabled = false" plugin changes needs restart of nvim to be updated
		enabled = true,
        -- if "notify = true" than it makes a notification
        -- every time when detects a changes in files
        -- (Isn't usefull in most of the cases)
		notify = false,
	},
}


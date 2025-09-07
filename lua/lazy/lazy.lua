-- This is a main file which
-- BootStraps lazy.nvim package manager
-- from https://github.com/folke/lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Settings for lazy.nvim package manager
require("lazy").setup({
    -- Changes location of lazy-lock.json from
    -- default ~/.config/nvim/lazy-lock.json
    -- to ~/.config/nvim/lua/lazy/lazy-lock.json
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
})


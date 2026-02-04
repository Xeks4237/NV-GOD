return {
	-- neoclip: Copy/Yank history manager for NeoVim (ClipBoard manager if are not a nerd XD)
	'AckslD/nvim-neoclip.lua',
	name = 'neoclip',
	lazy = false,
	opts = {
		history = 1000, -- Maximum number of clipboard entries to store
		enable_persistent_history = true, -- Persists clipboard history across Neovim sessions (requires sqlite.lua plugin)
		length_limit = 1048576, -- Maximum length (in bytes) for a single clipboard entry
		-- Enables real-time synchronization of clipboard across NeoVim instances
		-- requires "sessionizer" like plugin
		continuous_sync = true,
		db_path = vim.fn.stdpath 'data' .. '/databases/neoclip.sqlite3', -- File path for storing persistent clipboard history
		filter = nil, -- Optional function to filter clipboard entries (nil means no filtering)
		preview = true, -- Shows a preview of clipboard entries when browsing
		prompt = nil, -- Custom prompt for the clipboard picker (nil uses default)
		default_register = '"', -- Default register for clipboard operations
		default_register_macros = 'q', -- Default register for macro storage
		enable_macro_history = true, -- Enables storing and managing macro history
		content_spec_column = true, -- Displays content specification column in the picker
		disable_keycodes_parsing = false, -- Disables parsing of keycodes in clipboard entries
		dedent_picker_display = false, -- Removes indentation in picker display for cleaner visuals
		initial_mode = 'normal', -- Sets initial mode for picker (e.g., "insert" or "normal")
		on_select = {
			move_to_front = false, -- Moves selected entry to front of history
			close_telescope = true, -- Closes Telescope picker after selection
		},
		on_paste = {
			set_reg = false, -- Sets the selected entry to a register on paste
			move_to_front = false, -- Moves pasted entry to front of history
			close_telescope = true, -- Closes Telescope picker after pasting
		},
		on_replay = {
			set_reg = false, -- Sets the macro to a register on replay
			move_to_front = false, -- Moves replayed macro to front of history
			close_telescope = true, -- Closes Telescope picker after replaying
		},
		on_custom_action = {
			close_telescope = true, -- Closes Telescope picker after custom actions
		},
		keys = {
			-- Keymaps for neoclip in telescope ui
			telescope = {
				-- keymaps for INSERT mode
				i = {
					--- It is possible to map more than one key.
					-- paste = { "p", "<CR>" },
					paste = '<CR>', -- Keymap to paste chosen entry
					paste_behind = '<C-h>', -- Keymap to paste chosen entry behind of cursor (like P)
					select = '<C-l>', -- Keymap for selecting entry to paste later with p or P
					replay = '<C-o>', -- Replay a macro
					delete = { '<C-d>', '<C-j>' }, -- Delete an entry
					edit = { '<C-i>', '<C-k' }, -- Edit an entry
					custom = {},
				},
				-- Keymaps for NORMAL mode
				n = {
					paste = '<CR>', -- Keymap to paste chosen entry
					paste_behind = '<C-h>', -- Keymap to paste chosen entry behind of cursor (like P)
					select = '<C-l>', -- Keymap for selecting entry to paste later with p or P
					replay = '<C-o>', -- Replay a macro
					delete = { '<C-d>', '<C-j>' }, -- Delete an entry
					edit = { '<C-i>', '<C-k>' }, -- Edit an entry
					custom = {},
				},
			},
			-- Keymaps for neoclip in fzf-lua UI if available
			fzf = {
				select = 'default', -- Keymap for selecting entry to paste later with p or P
				paste = 'ctrl-l', -- Keymap to paste chosen entry
				paste_behind = 'ctrl-h', -- Keymap to paste chosen entry behind of cursor (like P)
				custom = {},
			},
		},
	},
}

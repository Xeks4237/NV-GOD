return {
	-- nvim-scrollbar: adds cool looking scrollbar with extra ui features to nvim
	'petertriho/nvim-scrollbar',
	name = 'nvim-scrollbar',
	lazy = true,
	event = { 'InsertEnter', 'BufReadPre', 'BufNewFile' },
	opts = {
		show = true, -- make scrollbar to be shown
		show_in_active_only = false, -- makes scrollbar to be shown in only active nvim window split
		set_highlights = true, -- Enables error, search and etc results on scrollbar
		folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
		max_lines = false, -- disables if no. of lines in buffer exceeds this
		hide_if_all_visible = false, -- Hides everything if all lines are visible
		throttle_ms = 128,
		handle = {
			text = ' ',
			blend = 0, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
			color = nil,
			color_nr = nil, -- cterm
			highlight = 'CursorColumn',
			hide_if_all_visible = false, -- Hides handle if all lines are visible
		},
		marks = {
			Cursor = {
				text = '•',
				priority = 10,
				gui = nil,
				color = 'white',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'Normal',
			},
			Search = {
				text = { '-', '=' },
				priority = 1,
				gui = nil,
				color = 'orange',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'Search',
			},
			Error = {
				text = { '-', '=' },
				priority = 2,
				gui = nil,
				color = 'red',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'DiagnosticVirtualTextError',
			},
			Warn = {
				text = { '-', '=' },
				priority = 3,
				gui = nil,
				color = 'yellow',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'DiagnosticVirtualTextWarn',
			},
			Info = {
				text = { '-', '=' },
				priority = 4,
				gui = nil,
				color = 'cyan',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'DiagnosticVirtualTextInfo',
			},
			Hint = {
				text = { '-', '=' },
				priority = 5,
				gui = nil,
				color = 'cyan',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'DiagnosticVirtualTextHint',
			},
			Misc = {
				text = { '-', '=' },
				priority = 6,
				gui = nil,
				color = 'green',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'Normal',
			},
			GitAdd = {
				text = '┆',
				priority = 7,
				gui = nil,
				color = 'green',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'GitSignsAdd',
			},
			GitChange = {
				text = '~',
				priority = 7,
				gui = nil,
				color = 'yellow',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'GitSignsChange',
			},
			GitDelete = {
				text = '-',
				priority = 7,
				gui = nil,
				color = 'red',
				cterm = nil,
				color_nr = nil, -- cterm
				highlight = 'GitSignsDelete',
			},
		},
		excluded_buftypes = {},
		excluded_filetypes = {
			'blink-cmp-menu',
			'dropbar_menu',
			'dropbar_menu_fzf',
			'DressingInput',
			'cmp_docs',
			'cmp_menu',
			'noice',
			'prompt',
			'TelescopePrompt',
		},
		autocmd = {
			render = {
				'BufWinEnter',
				'TabEnter',
				'TermEnter',
				'WinEnter',
				'CmdwinLeave',
				'TextChanged',
				'VimResized',
				'WinScrolled',
			},
			clear = {
				'BufWinLeave',
				'TabLeave',
				'TermLeave',
				'WinLeave',
			},
		},
		handlers = {
			cursor = true,
			diagnostic = true,
			gitsigns = true, -- Requires gitsigns
			handle = true,
			search = false, -- Requires hlslens
			ale = false, -- Requires ALE
		},
	},
}

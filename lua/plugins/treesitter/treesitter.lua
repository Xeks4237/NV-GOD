return {
	-- nvim-treesitter: Adds advanced syntax hyliting, code operations, and many more using language parsers
	-- NOTE: Also it allows to use his parsers for other plugin
	'nvim-treesitter/nvim-treesitter',
	name = 'treesitter',
	lazy = true,
	event = { 'InsertEnter', 'BufReadPre', 'BufNewFile' },
	build = ':TSUpdate', -- Makes update off parsers after loading a plugin
	-- main = "nvim-treesitter.configs", -- Sets main module to use for opts
	-- [ Configuration for Treesitter ] See ":help nvim-treesitter"
	opts = {
		-- Set Languages which you want to ensure that, they have their respected parsers installed
		ensure_installed = {
			'bash',
			'c',
			'html',
			'css',
			'javascript',
			'typescript',
			'lua',
			'luadoc',
			'markdown',
			'markdown_inline',
			'query',
			'vim',
			'vimdoc',
			'json',
			'yaml',
			'toml',
			'kdl',
		},
		-- Autoinstall languages that are not installed
		auto_install = true,
		-- Settings for highlighting
		highlight = {
			enable = true, -- Enable highlighting
			-- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
			--  If you are experiencing weird indenting issues, add the language to
			--  the list of additional_vim_regex_highlighting and disabled languages for indent.
			additional_vim_regex_highlighting = {
				'ruby',
			},
		},
		-- Settings for indenting
		indent = {
			enable = true, -- Enable indent
			-- Disable indent feature for some languages which have problems with that
			disable = {
				'ruby',
			},
		},
	},
}

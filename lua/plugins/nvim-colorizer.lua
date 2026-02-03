return {
	'norcalli/nvim-colorizer.lua',
	name = 'nvim-colorizer',
	lazy = true,
	event = { 'InsertEnter', 'BufReadPre', 'BufNewFile' },
	opts = {
		'*', -- Makes nvim-colorizer to attach to the all file types
		-- If you want some different way to color text in sertain filetypes
		-- For example in html:
		-- html = { mode = "foreground" },

		DEFAULT_OPTIONS = {
			RGB = true, -- #RGB hex codes
			RRGGBB = true, -- #RRGGBB hex codes
			names = true, -- "Name" codes like Blue
			RRGGBBAA = true, -- #RRGGBBAA hex codes
			rgb_fn = true, -- CSS rgb() and rgba() functions
			hsl_fn = true, -- CSS hsl() and hsla() functions
			css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
			css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
			-- Available modes: foreground, background
			mode = 'background', -- Set the display mode.
		},
	},
}

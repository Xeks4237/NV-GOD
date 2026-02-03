-- NOTE: See ":help gitsigns" to understand what the configuration keys do
return {
	-- Adds git related signs to the gutter, as well as utilities for managing changes
	'lewis6991/gitsigns.nvim',
	name = 'gitsigns',
	lazy = true,
	event = { 'InsertEnter', 'BufReadPre' },
	opts = {
		-- Icons in right of a NeoVim which are shows what kind of changes was made to git tracked files
		signs = {
			add = { text = '+' },
			change = { text = '~' },
			delete = { text = '_' },
			topdelete = { text = '‾' },
			changedelete = { text = '~' },
		},
		-- what plugin should do after attaching to buffer/file
		on_attach = function(bufnr)
			-- Some technical stuff
			local gitsigns = require 'gitsigns'

			local function map(mode, l, r, opts)
				opts = opts or {}
				opts.buffer = bufnr
				vim.keymap.set(mode, l, r, opts)
			end

			-- Section with keymaps:
			-- Navigation
			map('n', '<leader>g]', function()
				if vim.wo.diff then
					vim.cmd.normal { ']c', bang = true }
				else
					gitsigns.nav_hunk 'next'
				end
			end, { desc = '[g]it Next Change' })

			map('n', '<leader>g[', function()
				if vim.wo.diff then
					vim.cmd.normal { '[c', bang = true }
				else
					gitsigns.nav_hunk 'prev'
				end
			end, { desc = '[g]it Previous Change' })

			-- Actions
			-- visual mode
			map('v', '<leader>gs', function()
				gitsigns.stage_hunk {
					vim.fn.line '.',
					vim.fn.line 'v',
				}
			end, { desc = '[g]it [s]tage hunk' })
			map('v', '<leader>gr', function()
				gitsigns.reset_hunk {
					vim.fn.line '.',
					vim.fn.line 'v',
				}
			end, { desc = '[g]it [r]eset hunk' })
			-- normal mode
			map(
				'n',
				'<leader>gs',
				gitsigns.stage_hunk,
				{ desc = '[g]it [s]tage hunk' }
			)
			map(
				'n',
				'<leader>gr',
				gitsigns.reset_hunk,
				{ desc = '[g]it [r]eset hunk' }
			)
			map(
				'n',
				'<leader>gS',
				gitsigns.stage_buffer,
				{ desc = '[g]it [S]tage buffer' }
			)
			map(
				'n',
				'<leader>gu',
				gitsigns.stage_hunk,
				{ desc = '[g]it [u]ndo stage hunk' }
			)
			map(
				'n',
				'<leader>gR',
				gitsigns.reset_buffer,
				{ desc = '[g]it [R]eset buffer' }
			)
			map(
				'n',
				'<leader>gp',
				gitsigns.preview_hunk,
				{ desc = '[g]it [p]review hunk' }
			)
			map(
				'n',
				'<leader>gb',
				gitsigns.blame_line,
				{ desc = '[g]it [b]lame line' }
			)
			map(
				'n',
				'<leader>gd',
				gitsigns.diffthis,
				{ desc = '[g]it [d]iff against index' }
			)
			map('n', '<leader>gD', function()
				gitsigns.diffthis '@'
			end, { desc = '[g]it [D]iff against last commit' })
			-- Toggle Options
			map(
				'n',
				'<leader>gtb',
				gitsigns.toggle_current_line_blame,
				{ desc = '[t]oggle [b]lame Line' }
			)
			map(
				'n',
				'<leader>gtd',
				gitsigns.preview_hunk_inline,
				{ desc = '[t]oggle [d]eleted Lines' }
			)
		end,
	},
}

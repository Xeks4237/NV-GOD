return {
	'hrsh7th/nvim-cmp',
	name = 'nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'petertriho/cmp-git',
	},
	config = function()
		local cmp = require 'cmp'
		-- Set up nerd font icons for Autocompletions
		local kind_icons = {
			Text = '󰉿',
			Method = 'm',
			Function = '󰊕',
			Constructor = '',
			Field = '',
			Variable = '󰆧',
			Class = '󰌗',
			Interface = '',
			Module = '',
			Property = '',
			Unit = '',
			Value = '󰎠',
			Enum = '',
			Keyword = '󰌋',
			Snippet = '',
			Color = '󰏘',
			File = '󰈙',
			Reference = '',
			Folder = '󰉋',
			EnumMember = '',
			Constant = '󰇽',
			Struct = '',
			Event = '',
			Operator = '󰆕',
			TypeParameter = '󰊄',
		}

		cmp.setup {
			-- Enable completion
			enabled = true,

			-- Preselect behavior
			-- "cmp.Preselect.None" no preselect
			-- "cmp.Preselect.Item.First" preselect first option
			preselect = cmp.PreselectMode.None,

			-- Completion options
			completion = { completeopt = 'menu,menuone,noinsert' },

			-- Window appearance
			window = {
				-- Look of completions menu
				completion = cmp.config.window.bordered {
					-- Characters which makes border of completions popup
					border = {
						'╭',
						'─',
						'╮',
						'│',
						'╯',
						'─',
						'╰',
						'│',
					},
					col_offset = 1, -- Offset of a popup of a cursor by colums
					side_padding = 1, -- Amount of paddings in sides of completions popup
				},
				-- Look of completions documentation popup
				documentation = cmp.config.window.bordered {
					-- Characters which makes border of documentation popup
					border = {
						'╭',
						'─',
						'╮',
						'│',
						'╯',
						'─',
						'╰',
						'│',
					},
					max_width = 80, -- Max width of documentation popup
					max_height = 40, -- Max hight of documentation popup
				},
			},

			-- View settings
			view = {
				entries = {
					name = 'custom', -- Makes names of completions entries to be custom
					selection_order = 'top_down', -- Order of entries in completions popup, "top_down" or "down_top"
				},
			},

			-- Snippet engine (native Neovim snippets)
			snippet = {
				-- Expand snippets functionality using native NeoVim Snippets
				expand = function(args)
					vim.snippet.expand(args.body)
				end,
			},

			-- Mappings for popup menus
			mapping = cmp.mapping.preset.insert {
				-- Movement between entries using Ctrl h or l
				['<C-l>'] = cmp.mapping.select_next_item(),
				['<C-h>'] = cmp.mapping.select_prev_item(),
				-- Scrolling documentation popup using Ctrl j or k
				['<C-k>'] = cmp.mapping.scroll_docs(-4),
				['<C-j>'] = cmp.mapping.scroll_docs(4),
				-- Confirm selection with ENTER
				['<CR>'] = cmp.mapping.confirm { select = true },
				-- Cancel/Abort selection using Ctrl c
				['<C-c>'] = cmp.mapping.abort(),
				-- Tab for going to next entri
				['<Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif vim.snippet.jumpable(1) then
						vim.snippet.jump(1)
					else
						fallback()
					end
				end, { 'i', 's' }),
				-- Shift Tab for going to previous entri
				['<S-Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif vim.snippet.jumpable(-1) then
						vim.snippet.jump(-1)
					else
						fallback()
					end
				end, { 'i', 's' }),
			},

			-- Set completion sources where to get completions and some settings for them
			sources = cmp.config.sources({
				{
					name = 'nvim_lsp',
					priority = 2048,
					max_item_count = 20,
				},
			}, {
				{
					name = 'buffer',
					priority = 512,
					max_item_count = 15,
				},
				{
					name = 'path',
					priority = 256,
					max_item_count = 15,
				},
			}),

			-- Formatting of completion entries, like icons and etc
			formatting = {
				fields = { 'kind', 'abbr', 'menu' },
				format = function(entry, vim_item)
					vim_item.kind = string.format(
						'%s',
						kind_icons[vim_item.kind] or vim_item.kind
					)
					vim_item.menu = ({
						nvim_lsp = '[LSP]',
						path = '[Path]',
						buffer = '[Buffer]',
					})[entry.source.name] or entry.source.name
					return vim_item
				end,
			},

			-- Settings for better sorting of completion entries
			sorting = {
				priority_weight = 5,
				comparators = {
					cmp.config.compare.offset,
					cmp.config.compare.exact,
					cmp.config.compare.score,
					cmp.config.compare.recently_used,
					cmp.config.compare.locality,
					cmp.config.compare.kind,
					cmp.config.compare.sort_text,
					cmp.config.compare.length,
					cmp.config.compare.order,
				},
			},

			-- Performance tweaks to don't load everything at the same time
			performance = {
				debounce = 64,
				throttle = 40,
				fetching_timeout = 512,
				confirm_resolve_timeout = 128,
				async_budget = 2,
				max_view_entries = 256,
			},

			-- WARN: Experimental features: Use with caution!
			experimental = {
				ghost_text = true, -- Shows a ghost look of a selected entrie
			},
		}

		-- Gitcommit filetype setup
		cmp.setup.filetype('gitcommit', {
			sources = cmp.config.sources({
				{ name = 'git' },
			}, {
				{ name = 'buffer' },
			}),
		})
		require('cmp_git').setup()

		-- Command-line completion settings for searching with / and ?
		cmp.setup.cmdline({ '/', '?' }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = 'buffer' },
			},
		})

		-- Command-line completion settings for :
		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'path' },
			}, {
				{ name = 'cmdline' },
			}),
			matching = { disallow_symbol_nonprefix_matching = false },
		})

		-- LSP capabilities
		local capabilities =
			require('cmp_nvim_lsp').default_capabilities()
		-- Apply to all LSP servers
		-- vim.lsp.enable("*", { capabilities = capabilities })
	end,
}

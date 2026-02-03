return {
	'linrongbin16/lsp-progress.nvim',
	name = 'lsp-progress',
	lazy = true,
	event = { 'InsertEnter', 'BufReadPre', 'BufNewFile' },
	config = function()
		local api = require 'lsp-progress.api'
		local Defaults = {
			-- Spinning icons.
			spinner = {
				'⣾',
				'⣽',
				'⣻',
				'⢿',
				'⡿',
				'⣟',
				'⣯',
				'⣷',
			},

			-- Spinning update time in milliseconds.
			spin_update_time = 200,

			-- Last message cached decay time in milliseconds.
			--
			-- Message could be really fast(appear and disappear in an
			-- instant) that user cannot even see it, thus we cache the last message for a while for user view.
			decay = 700,

			-- User event name.
			event = 'LspProgressStatusUpdated',

			-- Event update time limit in milliseconds.
			--
			-- Sometimes progress handler could emit many events in an instant, while
			-- refreshing statusline cause too heavy synchronized IO, so we limit the
			-- event rate to reduce this cost.
			event_update_time_limit = 50,

			-- Max progress string length, by default -1 is unlimit.
			max_size = -1,

			-- Regular internal update time.
			--
			-- Emit user event to update the lsp progress status, even there's no new
			-- message.
			regular_internal_update_time = 500,

			-- Disable emitting events on specific mode/filetype.
			-- User events would interrupt insert mode, thus break which-key like plugins behaviour.
			-- See:
			--  * https://github.com/linrongbin16/lsp-progress.nvim/issues/50
			--  * https://neovim.io/doc/user/builtin.html#mode()
			disable_events_opts = {
				{
					mode = 'i',
					filetype = 'TelescopePrompt',
				},
			},

			-- Format series message.
			--
			-- By default it looks like: "formatting isort (100%) - done".
			series_format = function(
				title,
				message,
				percentage,
				done
			)
				local builder = {}
				local has_title = false
				local has_message = false
				if
					type(title) == 'string'
					and string.len(title) > 0
				then
					table.insert(builder, title)
					has_title = true
				end
				if
					type(message) == 'string'
					and string.len(message) > 0
				then
					table.insert(builder, message)
					has_message = true
				end
				if percentage and (has_title or has_message) then
					table.insert(
						builder,
						string.format('(%.0f%%)', percentage)
					)
				end
				if done and (has_title or has_message) then
					table.insert(builder, '- done')
				end
				return table.concat(builder, ' ')
			end,

			-- Format client message.
			--
			-- By default it looks like:
			-- "[null-ls] ⣷ formatting isort (100%) - done, formatting black (50%)".
			client_format = function(
				client_name,
				spinner,
				series_messages
			)
				return #series_messages > 0
						and ('[' .. client_name .. '] ' .. spinner .. ' ' .. table.concat(
							series_messages,
							', '
						))
					or nil
			end,

			-- Format (final) message.
			--
			-- By default it looks like:
			-- " LSP [null-ls] ⣷ formatting isort (100%) - done, formatting black (50%)"
			format = function(client_messages)
				-- icon: nf-fa-gear \uf013
				local sign = ' LSP'
				if #client_messages > 0 then
					return sign
						.. ' '
						.. table.concat(client_messages, ' ')
				end
				if #api.lsp_clients() > 0 then
					return sign
				end
				return ''
			end,

			-- Enable debug.
			debug = false,

			-- Print log to console(command line).
			console_log = true,

			-- Print log to file.
			file_log = false,

			-- Log file to write, work with "file_log=true".
			--
			-- For Windows: "$env:USERPROFILE\AppData\Local\nvim-data\lsp-progress.log".
			-- For *NIX: "~/.local/share/nvim/lsp-progress.log".
			file_log_name = 'lsp-progress.log',
		}

		local function setup(option)
			local config = vim.tbl_deep_extend(
				'force',
				vim.deepcopy(Defaults),
				option or {}
			)
			return config
		end

		local function _get_defaults()
			return Defaults
		end

		local M = {
			setup = setup,
			_get_defaults = _get_defaults,
		}

		return M
	end,
}

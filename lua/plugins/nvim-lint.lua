return {
	-- nvim-lint: Plugin which allows to setup Linters to needed filetypes
	'mfussenegger/nvim-lint',
	name = 'nvim-lint',
	lazy = true,
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local lint = require 'lint'
		-- Allows other plugins to add linters to "lint.linters_by_ft"
		lint.linters_by_ft = lint.linters_by_ft or {}
		-- Linters for some filetypes
		lint.linters_by_ft['markdown'] = { 'markdownlint' }
		--
		-- lint.linters_by_ft["clojure"] = nil
		-- lint.linters_by_ft["dockerfile"] = nil
		-- lint.linters_by_ft["inko"] = nil
		-- lint.linters_by_ft["janet"] = nil
		-- lint.linters_by_ft["json"] = nil
		-- lint.linters_by_ft["markdown"] = nil
		-- lint.linters_by_ft["rst"] = nil
		-- lint.linters_by_ft["ruby"] = nil
		-- lint.linters_by_ft["terraform"] = nil
		-- lint.linters_by_ft["text"] = nil

		-- NOTE: I recomment to don't touch this part of a code
		-- And edit only part above it

		-- Create autocommand which carries out the actual linting
		-- on the specified events.
		local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
		vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
			group = lint_augroup,
			callback = function()
				-- Only run the linter in buffers that you can modify in order to
				-- avoid superfluous noise, notably within the handy LSP pop-ups that
				-- describe the hovered symbol using Markdown.
				if vim.bo.modifiable then
					lint.try_lint()
				end
			end,
		})
	end,
}

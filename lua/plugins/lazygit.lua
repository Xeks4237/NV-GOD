return {
	-- lazygit.nvim: allows to open lazygit directly in NeoVim
	'kdheepak/lazygit.nvim',
	name = 'lazygit',
	lazy = true,
	cmd = {
		'LazyGit',
		'LazyGitConfig',
		'LazyGitCurrentFile',
		'LazyGitFilter',
		'LazyGitFilterCurrentFile',
	},
	-- Setting the keybinding for LazyGit with 'keys' is recommended in
	-- order to load the plugin when the command is run for the first time
	keys = {
		{
			'<leader>gl',
			'<cmd>LazyGit<CR>',
			desc = 'open [l]azygit',
		},
	},
}

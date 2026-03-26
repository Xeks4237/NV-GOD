-- vim-tpipeline: Combines NeoVim's status line with status line of tmux
vim.pack.add {
	{
		src = 'https://github.com/vimpostor/vim-tpipeline',
		name = 'vim-tpipeline',
	},
}

-- Configuration for vim-tpipeline
-- Make vim-tpipeline to don't embed itself to tmux status line itself
vim.g.tpipeline_autoembed = 0

-- tpipeline comes bundled with its own custom minimal statusline
-- vim.g.tpipeline_statusline = '%!tpipeline#stl#line()'

-- You can also use standard statusline syntax, see :help stl
-- vim.g.tpipeline_statusline = '%f'

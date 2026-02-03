return {
	'mfussenegger/nvim-dap-python',
	name = 'nvim-dap-python',
	lazy = true,
	config = function()
		-- NOTE: If you use not usuall way to manage virtual env for python,
		-- Uncomment lines belov:
		-- require("dap-python").resolve_python = function()
		--     return "/absolute/path/to/python"
		-- end
	end,
}

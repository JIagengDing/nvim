return {
	{
		"github/copilot.vim",
		enabled = true,
		event = "BufReadPre",
		config = function()
			vim.g.copilot_enabled = true
			vim.g.copilot_no_tab_map = true
			vim.api.nvim_set_keymap('n', '<leader>go', ':Copilot<CR>', { silent = true })
			vim.api.nvim_set_keymap('n', '<leader>ge', ':Copilot enable<CR>', { silent = true })
			vim.api.nvim_set_keymap('n', '<leader>gd', ':Copilot disable<CR>', { silent = true })
			-- vim.api.nvim_set_keymap('i', '<c-p>', '<Plug>(copilot-suggest)', {})
			-- vim.api.nvim_set_keymap('i', '<c-n>', '<Plug>(copilot-next)', { silent = true })
			-- vim.api.nvim_set_keymap('i', '<c-l>', '<Plug>(copilot-previous)', { silent = true })
			vim.cmd('imap <silent><script><expr> <C-V> copilot#Accept("")')
			vim.cmd([[
			let g:copilot_filetypes = {
	       \ 'TelescopePrompt': v:false,
	     \ }
			]])
		end
	},
	{
		"zbirenbaum/copilot.lua",
		enabled = false,
		cmd = "Copilot",
		event = "BufReadPre",
		config = function()
			require("copilot").setup({
				panel = {
					enabled = false,
					-- auto_refresh = true,
					-- keymap = {
					-- 	jump_prev = "[[",
					-- 	jump_next = "]]",
					-- 	accept = "<c-c>",
					-- 	refresh = "gr",
					-- 	open = "<c-f>"
					-- },
					-- layout = {
					-- 	position = "bottom", -- | top | left | right
					-- 	ratio = 0.4
					-- },
				},
				suggestion = {
					enabled = true,
					auto_trigger = true,
					debounce = 75,
					keymap = {
						accept = "<c-v>",
						accept_word = false,
						accept_line = false,
						-- next = "<c-]>",
						-- prev = "<c-[>",
						-- dismiss = "<C-]>",
					},
				},
				filetypes = {
					-- yaml = false,
					-- markdown = false,
					-- help = false,
					-- gitcommit = false,
					-- gitrebase = false,
					-- hgcommit = false,
					-- svn = false,
					-- cvs = false,
					["*"] = true,
				},
				copilot_node_command = 'node', -- Node.js version must be > 16.x
				server_opts_overrides = {},
			})
		end,
	},
}

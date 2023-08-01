return {
	{
		"shellRaining/hlchunk.nvim",
		-- enable = false,
		event = "BufRead",
		config = function()
			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, { pattern = "*", command = "EnableHL", })
			require('hlchunk').setup({
				chunk = {
					enable = true,
					use_treesitter = true,
					style = {
						{ fg = "#806d9c" },
					},
					exclude_filetypes = {
						aerial = true,
						starter = true,
					},
				},
				-- indent = {
				-- 	chars = {
				-- 		"│",
				-- 	},
				-- 	style = {
				-- 		"#FF0000",
				-- 		"#FF7F00",
				-- 		"#FFFF00",
				-- 		"#00FF00",
				-- 		"#00FFFF",
				-- 		"#0000FF",
				-- 		"#8B00FF",
				-- 	},
				-- },
				indent = {
					enable = true,
					chars = { "│", "¦", "┆", "┊", },
					use_treesitter = true,
					-- exclude_filetypes = {
					-- 	aerial = true,
					-- 	dashboard = true,
					-- 	help = true,
					-- 	lspinfo = true,
					-- 	lspsagafinder = true,
					-- 	packer = true,
					-- 	checkhealth = true,
					-- 	man = true,
					-- 	mason = true,
					-- 	NvimTree = true,
					-- 	["neo-tree"] = true,
					-- 	plugin = true,
					-- 	lazy = true,
					-- 	TelescopePrompt = true,
					-- 	[""] = true, -- because TelescopePrompt will set a empty ft, so add this.
					-- 	alpha = true,
					-- },
					support_filetypes = {
						"*.ts",
						"*.tsx",
						"*.js",
						"*.jsx",
						"*.html",
						"*.json",
						"*.go",
						"*.c",
						"*.py",
						"*.cpp",
						"*.rs",
						"*.h",
						"*.hpp",
						"*.lua",
						"*.vue",
						"*.java",
						"*.cs",
						"*.dart",
					},
				},
				blank = {
					enable = false,
					use_treesitter = true,
					chars = {
						" ",
					},
					-- style = {
					-- 	{ bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("cursorline")), "bg", "gui") },
					-- 	{ bg = "",                                                                         fg = "" },
					-- },
				},
				line_num = {
					use_treesitter = true,
				},
			})
		end
	},
}

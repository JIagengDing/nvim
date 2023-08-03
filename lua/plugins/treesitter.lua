return {
	{
		"nvim-treesitter/playground",
		cmd = "TSPlaygroundToggle"
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "BufReadPre",
		opts = { mode = "cursor" },
	},

	{
		"nvim-treesitter/nvim-treesitter",
		event = "BufRead",
		enabled = true,
		dependencies = {
			{ "windwp/nvim-ts-autotag", opts = {} },
		},
		opts = {
			ensure_installed = {
				"bash",
				-- "comment", -- comments are slowing down TS bigtime, so disable for now
				"cpp",
				"diff",
				"gitignore",
				"go",
				"java",
				"javascript",
				"lua",
				"markdown",
				"python",
				"regex",
				"rust",
				"sql",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"vue",
				"yaml",
				-- "wgsl",
				"json",
			},
			matchup = {
				enable = true,
			},
			-- highlight = { enable = true },
			query_linter = {
				enable = true,
				use_virtual_text = true,
				lint_events = { "BufWrite", "CursorHold" },
			},
			playground = {
				enable = true,
				disable = {},
				updatetime = 25,    -- Debounced time for highlighting nodes in the playground from source code
				persist_queries = true, -- Whether the query persists across vim sessions
				keybindings = {
					toggle_query_editor = "o",
					toggle_hl_groups = "i",
					toggle_injected_languages = "t",
					toggle_anonymous_nodes = "a",
					toggle_language_display = "I",
					focus_language = "f",
					unfocus_language = "F",
					update = "R",
					goto_node = "<cr>",
					show_help = "?",
				},
			},
			indent = { enable = false },
		},
	},
}

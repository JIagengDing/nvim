return {
	-- auto pairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end
	},
	{
		"godlygeek/tabular",
		cmd = { "Tabularize" },
	},
	{
		"gcmt/wildfire.vim",
		keys = { "<enter>", "<cmd>call wildfire#visual_expand()<cr>" },
	},
	{
		"kevinhwang91/nvim-ufo",
		event = "BufRead",
		dependencies = { "kevinhwang91/promise-async", },
		config = function() require('ufo').setup() end
	},
	{
		"pechorin/any-jump.vim",
		event = "BufRead",
		config = function()
			vim.keymap.set("n", "j", ":AnyJump<CR>", { noremap = true })
			vim.keymap.set("x", "j", ":AnyJumpVisual<CR>", { noremap = true })
			vim.g.any_jump_disable_default_keybindings = true
			vim.g.any_jump_window_width_ratio = 0.9
			vim.g.any_jump_window_height_ratio = 0.9
		end
	},
	{
		"nvim-pack/nvim-spectre",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{
				"<leader>F",
				mode = "n",
				function()
					require("spectre").open()
				end,
				desc = "Project find and replace"
			}
		}
	},
	-- auto completion
	-- {
	--   "hrsh7th/nvim-cmp",
	--   version = false, -- last release is way too old
	--   event = "InsertEnter",
	--   dependencies = {
	--     "hrsh7th/cmp-nvim-lsp",
	--     "hrsh7th/cmp-buffer",
	--     "hrsh7th/cmp-path",
	--     "saadparwaiz1/cmp_luasnip",
	--   },
	--   opts = function()
	--     vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
	--     local cmp = require("cmp")
	--     local defaults = require("cmp.config.default")()
	--     return {
	--       completion = {
	--         completeopt = "menu,menuone,noinsert",
	--       },
	--       snippet = {
	--         expand = function(args)
	--           require("luasnip").lsp_expand(args.body)
	--         end,
	--       },
	--       mapping = cmp.mapping.preset.insert({
	--         ["<C-e>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
	--         ["<C-u>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
	--         ["<C-k>"] = cmp.mapping.scroll_docs(-4),
	--         ["<C-l>"] = cmp.mapping.scroll_docs(4),
	--         ["<C-Space>"] = cmp.mapping.complete(),
	--         ["<C-e>"] = cmp.mapping.abort(),
	--         ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	--         ["<S-CR>"] = cmp.mapping.confirm({
	--           behavior = cmp.ConfirmBehavior.Replace,
	--           select = true,
	--         }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	--       }),
	--       sources = cmp.config.sources({
	--         { name = "nvim_lsp" },
	--         { name = "luasnip" },
	--         { name = "buffer" },
	--         { name = "path" },
	--       }),
	--       -- formatting = {
	--       --   format = function(_, item)
	--       --     local icons = require("lazyvim.config").icons.kinds
	--       --     if icons[item.kind] then
	--       --       item.kind = icons[item.kind] .. item.kind
	--       --     end
	--       --     return item
	--       --   end,
	--       -- },
	--       experimental = {
	--         ghost_text = {
	--           hl_group = "CmpGhostText",
	--         },
	--       },
	--       sorting = defaults.sorting,
	--     }
	--   end,
	-- },
}

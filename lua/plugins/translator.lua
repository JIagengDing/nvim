return {
	{
		'voldikss/vim-translator',
		config = function()
			vim.cmd [[
				nnoremap <silent> ts :TranslateW<CR>
			]]
			vim.g.translator_default_engines = { 'google' }
		end,

	}
}

local split = function()
	vim.cmd("set splitbelow")
	vim.cmd("sp")
	vim.cmd("res -7")
end
local compileRun = function()
	vim.cmd("w")

	local ft = vim.bo.filetype
	if ft == "python" then
		split()
		vim.cmd("term python3 %")
	elseif ft == "markdown" then
		vim.cmd(":InstantMarkdownPreview<CR>")
	elseif ft == 'lua' then
		split()
		vim.cmd("term luajit %")
	elseif ft == 'sh' then
		vim.cmd(":!time bash %")
	elseif ft == 'cpp' then
		split()
		vim.cmd("term c++ % -o %<")
		vim.cmd("term time ./%<")
	end
end

vim.keymap.set('n', 'r', compileRun, { silent = true })

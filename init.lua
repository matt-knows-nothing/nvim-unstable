-- Additional Keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "Go to netrw" })
vim.keymap.set("n", "<leader>o", vim.cmd.so, { desc = "Source file" })
vim.keymap.set("n", "<leader>w", vim.cmd.w, { desc = "Save file" })
vim.keymap.set("n", "<leader>q", vim.cmd.q, { desc = "Quit file" })


-- Lazy Package Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })

	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Vim opts
vim.opt.termguicolors = true
vim.opt.signcolumn = "number"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true

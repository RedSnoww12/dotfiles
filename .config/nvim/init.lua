local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup({
	spec = {
		-- add "core" LazyVim plugins
		---{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		---		{ import = "lazyvim.plugins.extras.dap.core" },
		---		{ import = "lazyvim.plugins.extras.test.core" },
		---		{ import = "lazyvim.plugins.extras.util.project" },

		-- tous tes fichiers persos
		{ import = "plugins" },
	},
})

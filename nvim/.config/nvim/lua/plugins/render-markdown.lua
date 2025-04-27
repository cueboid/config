return {
	"MeanderingProgrammer/render-markdown.nvim",
	-- dependencies = { -- if you use the mini.nvim suite
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	"echasnovski/mini.nvim",
	-- },
	-- dependencies = { -- if you use standalone mini plugins
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	"echasnovski/mini.icons",
	-- },
	dependencies = { -- if you prefer nvim-web-devicons
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
}

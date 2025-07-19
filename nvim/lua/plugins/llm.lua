return {
	"olimorris/codecompanion.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",

		-- 📄 Markdown rendering
		{
			"MeanderingProgrammer/render-markdown.nvim",
			ft = { "markdown", "codecompanion" },
		},

		-- 📑 Markdown live preview
		{
			"OXY2DEV/markview.nvim",
			build = "yarn install",
			ft = "markdown",
			cmd = { "MarkviewOpen", "MarkviewToggle" },
		},

		-- 🧩 Inline Git diff viewer
		{
			"echasnovski/mini.diff",
			version = false,
			config = function()
				require("mini.diff").setup()
			end,
		},

		-- 🖼️ Clipboard image paste
		{
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				default = {
					dir_path = "images",
					relative_to_current_file = true,
				},
			},
		},
	},
	opts = {
		backend = "ollama",
		model = "deepseek-coder:1.3b",
		auto_scroll = true,
		prompts = {
			chat = {
				system = "You are Deepseek Coder, an expert programming assistant.",
			},
		},
	},
	window = {
		layout = "vertical", -- float|vertical|horizontal|buffer
		position = "right", -- left|right|top|bottom (nil will default depending on vim.opt.splitright|vim.opt.splitbelow)
		border = "single",
		height = 0.8,
		width = 0.3,
		relative = "editor",
		full_height = true, -- when set to false, vsplit will be used to open the chat buffer vs. botright/topleft vsplit
		opts = {
			breakindent = true,
			cursorcolumn = false,
			cursorline = false,
			foldcolumn = "0",
			linebreak = true,
			list = false,
			numberwidth = 1,
			signcolumn = "no",
			spell = false,
			wrap = true,
		},
	},
	keys = {
		{
			"<leader>cc",
			"<cmd>CodeCompanion<cr>",
			desc = "Open Code Companion",
		},
	},
}

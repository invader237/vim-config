local masonplug = {
	"autopep8",
	"bash-language-server",
	"clangd",
	"cpplint",
	"cpptools",
	"css-lsp",
	"html-lsp",
	"js-debug-adapters",
	"json-lsp",
	"lua-language-server",
	"phpactor",
	"phpmd",
	"prettyphp",
	"python-lsp-server",
	"stylelint-lsp",
	"stylua",
	"typescript-language-server",
	"ts-standard",
	"yaml-language-server",
}

local servers = {
    "bashls",
    "clangd",
    "cssls",
    "html",
    "jsonls",
    "pyright",
    "ts_ls",
    "yamlls",
    "phpactor",
}

return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		opt = {
			ensure_installed = masonplug,
		},

		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			for _, server in ipairs(servers) do
				lspconfig[server].setup({
					capabilities = capabilities,
					-- Autres options spécifiques au serveur peuvent être ajoutées ici
				})
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}

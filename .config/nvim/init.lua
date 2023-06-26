require("arron.plugins-setup")
require("arron.core.options")
require("arron.core.keymaps")
require("arron.core.colorscheme")
require("arron.plugins.comment")
require("arron.plugins.nvim-tree")
require("arron.plugins.lualine")
require("arron.plugins.telescope")
require("arron.plugins.lsp.mason")
require("arron.plugins.lsp.lspconfig")

if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
end

-- base config
require("ys.settings")
require("ys.keybinds")
require("ys.plugins-setup")

-- theme
require("ys.colorscheme")
require("ys.plugins.theme.transparent")
require("ys.plugins.theme.catppuccin")

-- plugins
require("ys.plugins.neotree") -- file explorer
require("ys.plugins.nvim-cokeline") -- bufferline
require("ys.plugins.comment")
require("ys.plugins.gitsigns")
require("ys.plugins.treesitter")
require("ys.plugins.refactoring")
require("ys.plugins.lsp")
require("ys.plugins.autotag")
require("ys.plugins.autopairs")
require("ys.plugins.null-ls")

require("ys.plugins.lsp.magento")

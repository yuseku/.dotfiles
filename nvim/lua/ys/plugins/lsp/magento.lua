local server_config = require("lspconfig.configs")
local util = require("lspconfig.util")

server_config.magento = {
  default_config = {
    cmd = { "magento-lsp", "--stdio" },
    name = "magento",
    filetypes = {
      "xml"
    },
    root_dir = util.find_git_ancestor,
    single_file_support = true,
  }
}

require("lspconfig").magento.setup({})

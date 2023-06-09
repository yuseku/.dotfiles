local lspconfig = require"lspconfig"

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- configure html server
lspconfig.html.setup({
  capabilities = capabilities,
  cmd = { 
    "vscode-html-language-server",
    "--stdio"
  },
  filetypes = { 
    "html", 
    "phtml"
  },
  init_options = {
    configurationSection = {
      "html", 
      "css",
      "javascript"
    },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  },
})

local lspconfig = require"lspconfig"

-- local on_attach = function(client, bufnr)
--   -- format on save
--   if client.server_capabilities.documentFormattingProvider then
--     vim.api.nvim_create_autocmd(
--       "BufWritePre", 
--       {
--         group = vim.api.nvim_create_augroup("Format", { clear = true }),
--         buffer = bufnr,
--         callback = function() 
--           vim.lsp.buf.formatting_seq_sync() 
--         end
--       }
--     )
--   end
-- end

lspconfig.tsserver.setup {
  -- on_attach = on_attach,
  filetypes = { 
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx"
  },
  cmd = { 
    "typescript-language-server",
    "--stdio"
  }
}

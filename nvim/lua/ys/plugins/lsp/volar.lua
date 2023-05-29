local lspconfig = require'lspconfig'
local lspconfig_util = require 'lspconfig.util'

local volar_cmd = {'vue-language-server', '--stdio'}
local volar_root_dir = lspconfig_util.root_pattern 'package.json'

lspconfig.volar.setup{
  cmd = volar_cmd,
  root_dir = volar_root_dir,
  on_new_config = on_new_config,
  filetypes = {
    'vue',
  },
  init_options = {
    typescript = {
      tsdk = '/home/black-pearl/.nvm/versions/node/v16.13.2/lib/node_modules/typescript/lib'
      -- Alternative location if installed as root:
      -- tsdk = '/usr/local/lib/node_modules/typescript/lib'
    },
    languageFeatures = {
      implementation = true, -- new in @volar/vue-language-server v0.33
      references = true,
      definition = true,
      typeDefinition = true,
      callHierarchy = true,
      hover = true,
      rename = true,
      renameFileRefactoring = true,
      signatureHelp = true,
      codeAction = true,
      workspaceSymbol = true,
      completion = {
        defaultTagNameCase = 'both',
        defaultAttrNameCase = 'kebabCase',
        getDocumentNameCasesRequest = false,
        getDocumentSelectionRequest = false,
      }
    }
  }
}

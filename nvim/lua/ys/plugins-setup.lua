local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup END
]])

packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  -- lua functions that many plugins use
  use("nvim-lua/plenary.nvim")

  -- icons
  use("kyazdani42/nvim-web-devicons")

  -- colorscheme
  use("xiyaowong/nvim-transparent")
  use({ "catppuccin/nvim", as = "catppuccin" })
  -- use('gruvbox-community/gruvbox')
  -- use("Mofiqul/dracula.nvim")

  -- essential plugins
  use("tpope/vim-surround")

  -- commenting with gc
  use("numToStr/Comment.nvim")

  -- file explorer
  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  })

  -- fuzzy finding
  use({ 
    "ibhagwan/fzf-lua",
    -- optional for icon support
    requires = { "nvim-tree/nvim-web-devicons" }
  })

  -- git
  use("lewis6991/gitsigns.nvim")

  -- lsp
  use({
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },             -- Required
      { "williamboman/mason.nvim" },           -- Optional
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },         -- Required
      { "hrsh7th/cmp-nvim-lsp" },     -- Required
      { "hrsh7th/cmp-buffer" },       -- Optional
      { "hrsh7th/cmp-path" },         -- Optional
      { "saadparwaiz1/cmp_luasnip" }, -- Optional
      { "hrsh7th/cmp-nvim-lua" },     -- Optional

      -- Snippets
      { "L3MON4D3/LuaSnip" },             -- Required
      { "rafamadriz/friendly-snippets" }, -- Optional
    }
  })

  use("jose-elias-alvarez/null-ls.nvim")

  -- managing buffers
  use({
    "willothy/nvim-cokeline",
    requires = "kyazdani42/nvim-web-devicons", -- If you want devicons
    config = function()
      require("cokeline").setup()
    end
  })

  use("moll/vim-bbye")

  -- treesitter configuration
  use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })

  -- remote
  use({ 
    "yuseku/rsync.nvim", 
    run = "make",
    requires = {
      { "nvim-lua/plenary.nvim" }
    }
  })

  -- copilot
  use("github/copilot.vim")

  -- refactoring
  use({
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  })

  -- typescript autotag
  use("windwp/nvim-ts-autotag")

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...

  -- code formatter
  use("MunifTanjim/prettier.nvim")

  use("folke/trouble.nvim")

  use({ 'pbogut/magento2-ls', 
    run = 'npm install && npm run build',
    config = "require'magento2_ls'.setup()" 
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)

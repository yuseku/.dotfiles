local g = vim.g
local opt = vim.opt

opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "globals", "folds", "terminal", "help" }

-- hide status line
vim.cmd("set laststatus=0")
vim.cmd("set cursorline")
vim.cmd("set noshowcmd")
vim.cmd("set noshowmode")
vim.cmd("set noruler")

-- number of screen lines to keep above and below the cursor
opt.scrolloff = 8

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- apperance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.colorcolumn = "120"

-- remove thin cursor in insert mode
-- opt.guicursor = ""

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard 
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- other
opt.iskeyword:append("-")
opt.isfname:append("@-@")
opt.title = true

opt.updatetime = 50

opt.hlsearch = false
opt.incsearch = true

-- transaprency
g.transparent_enabled = true

-- indentation by file type
local function indentationByFile(fileType, indentationWidth)
  vim.api.nvim_create_autocmd(
    "FileType", 
    {
      pattern = fileType,
      callback = function()
        vim.opt_local.shiftwidth = indentationWidth
        vim.opt_local.tabstop = indentationWidth
      end
    }
  )
end

indentationByFile("php", 4)
indentationByFile("phtml", 4)
indentationByFile("xml", 4)

-- map <leader> to space
g.mapleader = " "
g.maplocalleader = " "

-- Lua function to set the window title to the relative path of the current file
function _G.set_relative_title()
  local path = vim.fn.expand("%")

  local plenary_path = require("plenary.path")
  local relative_path = plenary_path:new(path):make_relative()

  vim.o.titlestring = relative_path
  vim.o.title = false
  vim.o.title = true
end

-- Set up an autocmd to call the function whenever the buffer is entered or the current file is changed
vim.api.nvim_exec([[
  autocmd BufEnter,BufFilePost * lua set_relative_title()
]], false)

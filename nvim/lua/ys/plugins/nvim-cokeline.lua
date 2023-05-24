local status_ok, cokeline = pcall(require, "cokeline")
if not status_ok then
  print("cokeline not loaded!")
	return
end

local is_picking_focus = require("cokeline/mappings").is_picking_focus
local is_picking_close = require("cokeline/mappings").is_picking_close
local get_hex = require("cokeline/utils").get_hex

local red = vim.g.terminal_color_1
local yellow = vim.g.terminal_color_4
local space = {text = " "}
local dark = get_hex("Normal", "bg")
local text = get_hex("Comment", "fg")
local grey = get_hex("ColorColumn", "bg")
local light = get_hex("Comment", "fg")
local high = "#FAB387"

cokeline.setup({
  default_hl = {
    fg = function(buffer)
      if buffer.is_focused then
        return light
      end
      return text
    end,
    bg = get_hex('TabLineFill', 'bg'),
  },
  sidebar = {
    filetype = 'neo-tree',
    components = {
      {
        -- text = '  NeoTree',
        text = '  ',
        fg = yellow,
        bg = get_hex('CHADTreeNormal', 'bg'),
        style = 'bold',
      },
    }
  },
  components = {
    {
      text = ' ',
      bg = get_hex('TabLineFill', 'bg'),
    },
    space,
    {
      text = function(buffer)
        return buffer.devicon.icon
      end,
      fg = function(buffer)
        if is_picking_focus() then
          return yellow
        end

        if is_picking_close() then
          return red
        end

        if buffer.is_focused then
          return high
        else
          return light
        end
      end,
      style = function(buffer)
        if buffer.is_focused then
          return "bold,underline"
        end

        return nil
      end
    },
    {
      text = function(buffer)
        return  buffer.filename
      end,
      fg = function(buffer)
        if buffer.is_focused then
          return high
        end
      end,
      style = function(buffer)
        if buffer.is_focused then
          return "bold,underline"
        end

        return nil
      end
    },
    {
      text = function(buffer)
        if buffer.is_modified then
          return ' ●'
        end

        return ''
      end,
      fg = function(buffer)
        if buffer.is_focused then
          return high
        end
      end,
      truncation = { priority = 1 },
      style = function(buffer)
        if buffer.is_focused then
          return "bold,underline"
        end

        return nil
      end
    },
  }
})

local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
  print("nvim-autopairs not loaded!")
  return
end

autopairs.setup({
  disable_filetype = { "vim" },
})

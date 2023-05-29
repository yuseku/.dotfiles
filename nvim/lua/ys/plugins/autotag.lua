local status, autotag = pcall(require, "nvim-ts-autotag")
if not status then
  print("Autotag is not installed")
  return
end

autotag.setup({})

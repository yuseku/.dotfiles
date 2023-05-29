local status, prettier = pcall(require, "prettier")
if not status then
  print("prettier not loaded!")
  return
end

prettier.setup {
  bin = "prettierd",
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less"
  }
}

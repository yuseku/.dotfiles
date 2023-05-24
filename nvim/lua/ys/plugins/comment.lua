local setup, comment = pcall(require, "Comment")
if not setup then
  print('Comment not installed!')
  return
end

comment.setup()

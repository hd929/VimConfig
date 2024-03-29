local opts = { expr = true, silent = true, noremap = true }

vim.keymap.set("i", "<M-a>", function()
  return vim.fn["codeium#Accept"]()
end, opts)
vim.keymap.set("i", "<M-.>", function()
  return vim.fn["codeium#CycleCompletions"](1)
end, opts)
vim.keymap.set("i", "<M-,>", function()
  return vim.fn["codeium#CycleCompletions"](-1)
end, opts)
vim.keymap.set("i", "<M-x>", function()
  return vim.fn["codeium#Clear"]()
end, opts)

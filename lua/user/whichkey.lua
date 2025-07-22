local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

wk.add({
  { "<leader>a",  "<cmd>Alpha<cr>",                                                                                                    desc = "Alpha",             mode = "n" },
  { "<leader>b",  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",    desc = "Buffers",           mode = "n" },
  { "<leader>e",  "<cmd>NvimTreeToggle<cr>",                                                                                           desc = "Explorer",          mode = "n" },
  { "<leader>w",  "<cmd>w!<CR>",                                                                                                       desc = "Save",              mode = "n" },
  { "<leader>/",  '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>',                                                     desc = "Comment",           mode = "n" },
  { "<leader>q",  "<cmd>q!<CR>",                                                                                                       desc = "Quit",              mode = "n" },
  { "<leader>c",  "<cmd>Bdelete!<CR>",                                                                                                 desc = "Close Buffer",      mode = "n" },
  { "<leader>h",  "<cmd>nohlsearch<CR>",                                                                                               desc = "No Highlight",      mode = "n" },
  { "<leader>f",  "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", desc = "Find files",        mode = "n" },
  { "<leader>F",  "<cmd>Telescope live_grep theme=ivy<cr>",                                                                            desc = "Find Text",         mode = "n" },
  { "<leader>P",  "<cmd>lua require('telescope').extensions.projects.projects()<cr>",                                                  desc = "Projects",          mode = "n" },

  -- Git mappings
  { "<leader>gg", "<cmd>Neogit<CR>",                                                                                                   desc = "Neogit",            mode = "n" },
  { "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>",                                                                       desc = "Next Hunk",         mode = "n" },
  { "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>",                                                                       desc = "Prev Hunk",         mode = "n" },
  { "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>",                                                                      desc = "Blame",             mode = "n" },
  { "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>",                                                                    desc = "Preview Hunk",      mode = "n" },
  { "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>",                                                                      desc = "Reset Hunk",        mode = "n" },
  { "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>",                                                                    desc = "Reset Buffer",      mode = "n" },
  { "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>",                                                                      desc = "Stage Hunk",        mode = "n" },
  { "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",                                                                 desc = "Undo Stage Hunk",   mode = "n" },
  { "<leader>go", "<cmd>Telescope git_status<cr>",                                                                                     desc = "Open changed file", mode = "n" },
  { "<leader>gb", "<cmd>Telescope git_branches<cr>",                                                                                   desc = "Checkout branch",   mode = "n" },
  { "<leader>gc", "<cmd>Telescope git_commits<cr>",                                                                                    desc = "Checkout commit",   mode = "n" },
  { "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>",                                                                                   desc = "Diff",              mode = "n" },
})

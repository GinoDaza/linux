
vim.api.nvim_set_keymap(
  "n",
  "<leader>rc",
  ":w<CR>:vsplit | terminal g++ % -o %:r && cd $(dirname %) && ./$(basename %:r)<CR>",
  { noremap = true, silent = true, desc = "Compile and run C++ file in split terminal" }
)

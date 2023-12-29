vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  hijack_netrw = true,
  disable_netrw = true,
})

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

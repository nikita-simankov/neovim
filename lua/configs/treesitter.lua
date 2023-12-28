return require('nvim-treesitter.configs').setup({
  ensure_installed = { "lua" },
  auto_install = true,
  sync_install = true,
  highlight = {
    enable = true
  }
})

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "hrsh7th/cmp-nvim-lsp"
  },
  config = function()
    require('configs.completions').cmp_setup()
  end
}

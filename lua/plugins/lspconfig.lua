return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("configs.lspconfig").setup_mason_lspconfig()
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig").setup_lspconfig()
    end
  }
}

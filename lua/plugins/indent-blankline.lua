return {
  "lukas-reineke/indent-blankline.nvim",
  dependencies = {
    "HiPhish/rainbow-delimiters.nvim"
  },
  config = function()
    require("configs.indent-blankline")
  end
}

local actions = require("telescope.builtin")

require("telescope").setup({
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({})
    }
  }
})

require("telescope").load_extension("ui-select")

vim.keymap.set("n", "<leader>tf", actions.find_files, {})
vim.keymap.set("n", "<leader>tg", actions.live_grep, {})


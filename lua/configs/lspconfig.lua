return {
  setup_mason_lspconfig = function()
    return require("mason-lspconfig").setup({
      ensure_installed = {
        "gopls",
        "lua_ls",
        "tsserver",
        "tailwindcss",
      },
    })
  end,

  setup_lspconfig = function()
    local lspconfig = require("lspconfig")

    local lspservers = {
      "gopls",
      "lua_ls",
      "tsserver",
      "tailwindcss",
    }

    local on_attach = function(_, _)
      vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, {})
      vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, {})
    end
    local capabilities = require("configs.completions").capabilties

    for _, server in ipairs(lspservers) do
      lspconfig[server].setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end

    local signs = { Error = " ", Warn = " ", Hint = "󰄳 ", Info = " " }

    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
    end
  end
}

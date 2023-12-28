local cmp_setup = function()
  local cmp = require('cmp')

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end
    },
    window = {
      completion = cmp.config.window.bordered(),
    },
    mapping = {
      ["<C-e>"] = cmp.mapping.abort(),
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-space"] = cmp.mapping.complete(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "path" },
    }, {
      { name = "buffer" }
    })
  })
end

return {
  cmp_setup = cmp_setup,
  capabilities = require("cmp_nvim_lsp").default_capabilities()
}

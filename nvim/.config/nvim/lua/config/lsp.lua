
-- lua/config/lsp.lua
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = { "lua_ls", "pyright", "tsserver" }, -- 원하는 LSP 서버
  automatic_installation = true,
})

-- 기본 LSP 설정
local capabilities = require('cmp_nvim_lsp').default_capabilities()

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = capabilities,
    })
  end,
})

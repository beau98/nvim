require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
    "gopls"
  },
  settings = {
    gopls = {
      usePlaceholders = true, -- 使用占位符
      completeUnimported = true, -- 提供未导入包的补全
      experimentalWorkspaceModule = true, -- 支持在工作区外的模块
    },
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
}

require("lspconfig").gopls.setup {
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" }
}

return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })
    require("mason-lspconfig").setup({
      ensure_installed = {
        "emmet_ls",
        "tsserver",
        "html",
        "cssls",
        "lua_ls",
        "clangd",
        "pyright",
      },
      automatic_installation = true,
    })
  end,
}

return {
  "mfussenegger/nvim-lint",
  config = function()
    require("lint").linters_by_ft = {
      cpp = { "clangtidy" },
      c = { "cpplint" },
      lua = { "luacheck" },
      html = { "tidy" },
      css = { "stylelint" },
      javascript = { "eslint" },
      py = { "pylint" },
    }
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        require("lint").try_lint()
      end,
    })
  end,
}

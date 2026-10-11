return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("clangd", {})
    vim.lsp.enable("clangd")
  end,
}


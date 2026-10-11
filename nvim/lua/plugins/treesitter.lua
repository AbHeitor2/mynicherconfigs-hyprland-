return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  opts = {
    ensure_installed = {
      "lua",
      "typescript",
      "cpp",
      "python",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    auto_install = false,
  },
}


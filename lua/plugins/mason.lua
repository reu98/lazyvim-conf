return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "goimports",
      "gofumpt",
      "gomodifytags",
      "impl",
      "sqlfluff",
      "hadolint",
      "prettier",
      "shellcheck",
      "markdownlint-cli2",
      "markdown-toc",
    },
  },
}

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
    },
  },
}

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      go = { "goimports", "gofumpt" },
    },
    formatters = {
      prettier = {
        prepend_args = { "--end-of-line auto", "--tab-width 4", "--bracket-same-line" },
      },
    },
  },
}

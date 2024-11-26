return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      prettier = {
        prepend_args = { "--end-of-line auto", "--tab-width 4", "--bracket-same-line" },
      },
    },
  },
}

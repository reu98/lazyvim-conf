return {
  "stevearc/conform.nvim",
  opts = function()
    local opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
      },
      formatters = {
        prettier = {
          single_quote = true,
          jsx_single_quote = true,
          trailing_comma = "none",
          tab_width = 2,
          semi = true,
          bracket_spacing = true,
          bracket_sameLine = false,
          jsx_bracket_same_line = false,
          print_width = 100,
        },
      },
    }
    return opts
  end,
}

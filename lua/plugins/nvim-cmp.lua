return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji",
    {
      "roobert/tailwindcss-colorizer-cmp.nvim",
      opts = {},
    },
  },
  opts = function(_, opts)
    local format_kinds = opts.formatting.format
    opts.formatting.format = function(entry, item)
      format_kinds(entry, item)
      return require("tailwindcss-colorizer-cmp").formatter(entry, item)
    end
    table.insert(opts.sources, { name = "emoji" })
  end,
}

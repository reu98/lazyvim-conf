return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji",
    {
      "roobert/tailwindcss-colorizer-cmp.nvim",
      opts = {},
    },
    {
      "zbirenbaum/copilot-cmp",
      opts = {},
      config = function(_, opts)
        local copilot_cmp = require("copilot_cmp")
        copilot_cmp.setup(opts)
        -- attach cmp source whenever copilot attaches
        -- fixes lazy-loading issues with the copilot cmp source
        LazyVim.lsp.on_attach(function()
          copilot_cmp._on_insert_enter({})
        end, "copilot")
      end,
      specs = {
        {
          "hrsh7th/nvim-cmp",
          optional = true,
          ---@param opts cmp.ConfigSchema
          opts = function(_, opts)
            table.insert(opts.sources, 1, {
              name = "copilot",
              group_index = 1,
              priority = 100,
            })
          end,
        },
      },
    },
  },
  opts = function(_, opts)
    local format_kinds = opts.formatting.format
    opts.formatting.format = function(entry, item)
      format_kinds(entry, item)
      return require("tailwindcss-colorizer-cmp").formatter(entry, item)
    end
    table.insert(opts.sources, { name = "emoji" })
    table.insert(opts.sources, 1, {
      name = "codeium",
      group_index = 1,
      priority = 100,
    })
  end,
}

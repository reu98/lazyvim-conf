return {
  "andrewferrier/debugprint.nvim",
  opts = function(_, opts)
    opts.keymaps = {}
    opts.display_counter = false
    opts.print_tag = ""
    opts.filetypes = opts.filetypes or {}

    opts.filetypes.javascript = {
      left = 'console.log("🚀 ~ ',
    }

    opts.filetypes.typescript = {
      left = 'console.log("🚀 ~ ',
    }

    opts.filetypes.javascriptreact = {
      left = 'console.log("🚀 ~ ',
    }

    opts.filetypes.typescriptreact = {
      left = 'console.log("🚀 ~ ',
    }

    return opts
  end,
}

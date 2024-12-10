return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      eslint = {
        settings = {
          workingDirectories = { mode = "auto" },
          format = auto_format,
        },
      },
    },
    setup = {
      eslint = function()
        if not auto_format then
          return
        end

        local formatter = LazyVim.lsp.formatter({
          name = "eslint: lsp",
          primary = false,
          priority = 200,
          filter = "eslint",
        })

        LazyVim.format.register(formatter)
      end,
    },
  },
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          ".git",
          ".DS_Store",
          "thumbs.db",
        },
        never_show = {
          ".git",
          ".bundle",
        },
      },
    },
    commands = {
      open_finder = function(state)
        local node = state.tree:get_node()
        local path = node.path
        if vim.fn.has("mac") == 1 then
          os.execute("open -R " .. vim.fn.shellescape(path))
        else
          vim.api.nvim_err_writeln("This functionality is only supported on macOS")
        end
      end,
    },
    window = {
      mappings = {
        o = "open_finder",
      },
    },
  },
}

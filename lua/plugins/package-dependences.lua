return {
  -- Package Info plugin
  {
    "vuki656/package-info.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("package-info").setup({
        icons = {
          enable = true, -- Show icons
          style = {
            up_to_date = "✅",
            outdated = "❌",
          },
        },
        autostart = true, -- Automatically start when opening package.json
        hide_up_to_date = true, -- Hide up-to-date versions
        hide_unstable_versions = true, -- Hide unstable versions
      })
    end,
  },
}

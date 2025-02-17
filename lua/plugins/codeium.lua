return {
  "Exafunction/codeium.nvim",
  cmd = "Codeium",
  event = "InsertEnter",
  build = ":Codeium Auth",
  opts = function(_, opts)
    LazyVim.cmp.actions.ai_accept = function()
      if require("codeium.virtual_text").get_current_completion_item() then
        LazyVim.create_undo()
        vim.api.nvim_input(require("codeium.virtual_text").accept())
        return true
      end
    end

    opts.enable_chat = false
    opts.enable_cmp_source = vim.g.ai_cmp
    opts.virtual_text = {
      enabled = not vim.g.ai_cmp,
      key_bindings = {
        accept = false, -- handled by nvim-cmp / blink.cmp
        next = "<M-]>",
        prev = "<M-[>",
      },
    }
  end,
}

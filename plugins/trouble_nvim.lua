return {
  "folke/trouble.nvim", -- Helps you solve all the trouble your code is causing
  keys = { { "<leader>x", "<leader>x", desc = "Trouble help" } },
  cmd = { "Trouble", "TroubleClose", "TroubleToggle", "TroubleRefresh" },
  config = function()
    require("trouble").setup {
      mode = "document_diagnostics",
      use_diagnostic_signs = true,
      action_keys = {
        close = { "q", "<esc>" },
        cancel = "<c-e>",
      },
    }
  end,
}

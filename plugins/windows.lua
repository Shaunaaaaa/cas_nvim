return {
  "anuvyklack/windows.nvim",
  lazy = true,
  cmd = { "WindowsMaximize", "WindowsMaximizeVertically", "WindowsMaximizeHorizontally", "WindowsEqualize" },
  dependencies = {
    "anuvyklack/animation.nvim",
    "anuvyklack/middleclass",
  },
  config = function()
    require("windows").setup {
      autowidth = {
        enable = false,
      },
      ignore = {
        buftype = { "quickfix" },
        filetype = {
          "NvimTree",
          "neo-tree",
          "undotree",
          "gundo",
          "qf",
          "toggleterm",
          "TelescopePrompt",
          "alpha",
          "netrw",
        },
      },
    }
  end,
}

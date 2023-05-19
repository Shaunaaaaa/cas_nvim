return {
  "xiyaowong/nvim-transparent",
  cmd = { "TransparentEnable", "TransparentDisable", "TransparentToggle" },
  config = function() require "user.plugins.config.transparent" end,
}

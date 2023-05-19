return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "cmake",
      "comment",
      "cpp",
      "css",
      "dockerfile",
      "go",
      "html",
      "http",
      "javascript",
      "java",
      "json",
      "lua",
      "make",
      "markdown",
      "regex",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "yaml",
    },
    indent = { enable = true, disable = { "python" } },
    -- markid = { enable = true },
  },
}

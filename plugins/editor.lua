return {
  -- {
  --   "folke/zen-mode.nvim",
  --   cmd = "ZenMode",
  --   opts = {
  --     window = {
  --       backdrop = 1,
  --       width = function() return math.min(120, vim.o.columns * 0.75) end,
  --       height = 0.9,
  --       options = {
  --         number = false,
  --         relativenumber = false,
  --         foldcolumn = "0",
  --         list = false,
  --         showbreak = "NONE",
  --         signcolumn = "no",
  --       },
  --     },
  --     plugins = {
  --       options = {
  --         cmdheight = 1,
  --         laststatus = 0,
  --       },
  --     },
  --     on_open = function() -- disable diagnostics and indent blankline
  --       vim.g.diagnostics_mode_old = vim.g.diagnostics_mode
  --       vim.g.diagnostics_mode = 0
  --       vim.diagnostic.config(require("astronvim.utils.lsp").diagnostics[0])
  --       vim.g.indent_blankline_enabled_old = vim.g.indent_blankline_enabled
  --       vim.g.indent_blankline_enabled = false
  --     end,
  --     on_close = function() -- restore diagnostics and indent blankline
  --       vim.g.diagnostics_mode = vim.g.diagnostics_mode_old
  --       vim.diagnostic.config(require("astronvim.utils.lsp").diagnostics[vim.g.diagnostics_mode])
  --       vim.g.indent_blankline_enabled = vim.g.indent_blankline_enabled_old
  --     end,
  --   },
  -- },
  {
    "echasnovski/mini.move",
    keys = {
      { "<M-l>", mode = { "n", "v" } },
      { "<M-k>", mode = { "n", "v" } },
      { "<M-j>", mode = { "n", "v" } },
      { "<M-h>", mode = { "n", "v" } },
    },
    config = function(_, opts) require("mini.move").setup(opts) end,
  },
  -- {
  --   "arsham/indent-tools.nvim",
  --   dependencies = { "arsham/arshlib.nvim" },
  --   -- event = "User AstroFile",
  --   config = function() require("indent-tools").config {} end,
  -- },
  -- {
  --   "ahmedkhalf/project.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     ignore_lsp = { "lua_ls", "julials" },
  --     -- ignore_lsp = { "lua_ls" },
  --     detection_methods = { "pattern" },
  --     patterns = {
  --       ".bzr",
  --       ".git",
  --       ".hg",
  --       ".root",
  --       ".svn",
  --       "_darcs",
  --       "Cargo.lock",
  --       "Cargo.toml",
  --       "Makefile",
  --       "package.json",
  --       silent_chdir = false,
  --     },
  --   },
  --   config = function(_, opts) require("project_nvim").setup(opts) end,
  -- },
  -- {
  --   "nvim-pack/nvim-spectre",
  --   cmd = "Spectre",
  --   opts = function()
  --     local prefix = "<leader>s"
  --     return {
  --       mapping = {
  --         send_to_qf = { map = prefix .. "q" },
  --         replace_cmd = { map = prefix .. "c" },
  --         show_option_menu = { map = prefix .. "o" },
  --         run_current_replace = { map = prefix .. "C" },
  --         run_replace = { map = prefix .. "R" },
  --         change_view_mode = { map = prefix .. "v" },
  --         resume_last_search = { map = prefix .. "l" },
  --       },
  --     }
  --   end,
  -- },
}

return {
  { "max397574/better-escape.nvim", enabled = false },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    config = function(plugin, opts)
      require "plugins.configs.luasnip" (plugin, opts)                                               -- include the default astronvim config that calls the setup call
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/plugins/snippets" } } -- load snippets paths
    end,
  },
  -- 花式滑动
  {
    "gen740/SmoothCursor.nvim",
    cond = vim.g.neovide == nil,
    lazy = false,
    opts = {
      autostart = true,
      fancy = {
        enable = true,
        -- head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil },
        head = { cursor = "", texthl = "SmoothCursor", linehl = nil },
        -- head = { cursor = "", texthl = "SmoothCursor", linehl = nil },
        body = {
          { cursor = "", texthl = "SmoothCursorRed" },
          { cursor = "", texthl = "SmoothCursorOrange" },
          { cursor = "●", texthl = "SmoothCursorYellow" },
          { cursor = "●", texthl = "SmoothCursorGreen" },
          { cursor = "•", texthl = "SmoothCursorAqua" },
          { cursor = ".",   texthl = "SmoothCursorBlue" },
          { cursor = ".",   texthl = "SmoothCursorPurple" },
        },
        tail = { cursor = nil, texthl = "SmoothCursor" },
      },
    },
  },
  -- {
  --   "gcmt/wildfire.vim",
  --   lazy = false,
  --   opts = {
  --     autostart = true,
  --     fancy = { enable = true },
  --   },
  --   config = function()
  --   end,
  -- },
  --定义一些vim快捷键
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  --   opts = {
  --     autostart = true,
  --     fancy = { enable = true },
  --   },
  --   config = function()
  --   end,
  -- },
  --文字在括号中补充括号
  {
    "tpope/vim-surround",
    lazy = false,
    opts = {
      autostart = true,
      fancy = { enable = true },
    },
    config = function()
    end,
  },
  --定义窗口大小
  {
    "anuvyklack/hydra.nvim",
    lazy = false,
    opts = {
      autostart = true,
      fancy = { enable = true },
    },
    config = function() require "user.plugins.config.hydra" end,
  },
  -- {
  --   "glepnir/mutchar.nvim",
  --   lazy = false,
  --   config = function() require "user.plugins.config.mutchar" end,
  -- },
  -- 用不上的插件
  {
    "lervag/vimtex",
    lazy = false,
    cmd = { "VimtexStop", "VimtexCompile" },
    config = function() require "user.plugins.config.vimtex" end,
  },
  --文字对齐插件
  {
    "junegunn/vim-easy-align",
    lazy = false,
  },
  -- {
  --   "github/copilot.vim",
  --   lazy = false,
  -- },
  {
    "codota/tabnine-nvim",
    cmd = { "TabnineStatus", "TabnineDisable", "TabnineEnable", "TabnineToggle" },
    build = "./dl_binaries.sh",
  },
  -- {
  --   "vzze/cmdline.nvim",
  --   config = function() require "user.plugins.config.cmdline" end,
  -- },
  -- {
  --   "VonHeikemen/fine-cmdline.nvim",
  --   cmd = { "FineCmdline" },
  --   config = function() require "user.plugins.config.fine-cmdline" end,
  -- },

  --悬浮的命令输入框
  {
    "folke/noice.nvim",
    lazy = false,
    config = function()
      require("noice").setup {
        lsp = {
          -- 覆盖markdown渲染，以便**cmp**和其他插件使用**Treesetter**
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
          signature = { enabled = false },
          hover = { enabled = false },
        },
        -- 您可以启用一个预设以便于配置
        presets = {
          bottom_search = false,        -- 使用经典的底部命令行进行搜索
          command_palette = true,       -- 将cmdline和弹出菜单放在一起
          long_message_to_split = true, -- 长消息拆分发送
          inc_rename = false,           -- 启用inc-rename.nvim的输入对话框
          lsp_doc_border = false,       -- 为悬停文档和签名帮助添加边框
        },
      }
    end,
  },
  -- 使用彩虹括号
  {
    "HiPhish/nvim-ts-rainbow2",
    lazy = false,
    opts = {
      autostart = true,
    },
    config = function() require "user.plugins.config.nvim-ts-rainbow2" end,
  },
}

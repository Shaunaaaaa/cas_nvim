return {
  "sindrets/diffview.nvim",
  event = "User AstroGitFile",
  opts = function()
    local actions = require "diffview.actions"
    local utils = require "astronvim.utils" --  astronvim utils

    local prefix = "<leader>D"

    utils.set_mappings {
      n = {
        [prefix] = { name = "  文件比较" },
        [prefix .. "<cr>"] = { "<cmd>DiffviewOpen<cr>", desc = "  打开差异视图" },
        [prefix .. "h"] = { "<cmd>DiffviewFileHistory %<cr>", desc = "  打开差异视图文件历史记录" },
        [prefix .. "H"] = { "<cmd>DiffviewFileHistory<cr>", desc = "  打开差异视图分支历史记录" },
      },
    }

    local build_keymaps = function(maps)
      local out = {}
      local i = 1
      for lhs, def in
        pairs(utils.extend_tbl(maps, {
          [prefix .. "q"] = { "<cmd>DiffviewClose<cr>", desc = "  关闭差异视图" }, -- Toggle the file panel.
          ["]D"] = { actions.select_next_entry, desc = "  下一个差异视图" }, -- Open the diff for the next file
          ["[D"] = { actions.select_prev_entry, desc = "  上一个差异视图" }, -- Open the diff for the previous file
          ["[C"] = { actions.prev_conflict, desc = "  下一个冲突" }, -- In the merge_tool: jump to the previous conflict
          ["]C"] = { actions.next_conflict, desc = "  上一个冲突" }, -- In the merge_tool: jump to the next conflict
          ["Cl"] = { actions.cycle_layout, desc = "  循环差异布局" }, -- Cycle through available layouts.
          ["Ct"] = { actions.listing_style, desc = "  循环树样式" }, -- Cycle through available layouts.
          ["<leader>e"] = { actions.toggle_files, desc = "  切换资源管理器" }, -- Toggle the file panel.
          ["<leader><leader>e"] = { actions.focus_files, desc = "  焦点资源管理器" }, -- Bring focus to the file panel
        }))
      do
        local opts
        local rhs = def
        local mode = { "n" }
        if type(def) == "table" then
          if def.mode then mode = def.mode end
          rhs = def[1]
          def[1] = nil
          def.mode = nil
          opts = def
        end
        out[i] = { mode, lhs, rhs, opts }
        i = i + 1
      end
      return out
    end

    return {
      enhanced_diff_hl = true,
      view = {
        merge_tool = { layout = "diff3_mixed" },
      },
      keymaps = {
        disable_defaults = true,
        view = build_keymaps {
          [prefix .. "o"] = { actions.conflict_choose "ours", desc = "  取我们的" }, -- Choose the OURS version of a conflict
          [prefix .. "t"] = { actions.conflict_choose "theirs", desc = "  取别人的" }, -- Choose the THEIRS version of a conflict
          [prefix .. "b"] = { actions.conflict_choose "base", desc = "  取基数" }, -- Choose the BASE version of a conflict
          [prefix .. "a"] = { actions.conflict_choose "all", desc = "  全部接受" }, -- Choose all the versions of a conflict
          [prefix .. "0"] = { actions.conflict_choose "none", desc = "  不接受任何内容" }, -- Delete the conflict region
        },
        diff3 = build_keymaps {
          [prefix .. "O"] = { actions.diffget "ours", mode = { "n", "x" }, desc = "  获取我们的差异" }, -- Obtain the diff hunk from the OURS version of the file
          [prefix .. "T"] = { actions.diffget "theirs", mode = { "n", "x" }, desc = "  获取别人的差异" }, -- Obtain the diff hunk from the THEIRS version of the file
        },
        diff4 = build_keymaps {
          [prefix .. "B"] = { actions.diffget "base", mode = { "n", "x" }, desc = "  获取基本差异" }, -- Obtain the diff hunk from the OURS version of the file
          [prefix .. "O"] = { actions.diffget "ours", mode = { "n", "x" }, desc = "  获取我们的差异" }, -- Obtain the diff hunk from the OURS version of the file
          [prefix .. "T"] = { actions.diffget "theirs", mode = { "n", "x" }, desc = "  获取别人的差异" }, -- Obtain the diff hunk from the THEIRS version of the file
        },
        file_panel = build_keymaps {
          j = actions.next_entry, -- Bring the cursor to the next file entry
          k = actions.prev_entry, -- Bring the cursor to the previous file entry.
          o = actions.select_entry,
          S = actions.stage_all, -- Stage all entries.
          U = actions.unstage_all, -- Unstage all entries.
          X = actions.restore_entry, -- Restore entry to the state on the left side.
          L = actions.open_commit_log, -- Open the commit log panel.
          Cf = { actions.toggle_flatten_dirs, desc = "Flatten" }, -- Flatten empty subdirectories in tree listing style.
          R = actions.refresh_files, -- Update stats and entries in the file list.
          ["-"] = actions.toggle_stage_entry, -- Stage / unstage the selected entry.
          ["<down>"] = actions.next_entry,
          ["<up>"] = actions.prev_entry,
          ["<cr>"] = actions.select_entry, -- Open the diff for the selected entry.
          ["<2-LeftMouse>"] = actions.select_entry,
          ["<c-b>"] = actions.scroll_view(-0.25), -- Scroll the view up
          ["<c-f>"] = actions.scroll_view(0.25), -- Scroll the view down
          --["<tab>"] = actions.select_next_entry,
          --["<s-tab>"] = actions.select_prev_entry,
        },
        file_history_panel = build_keymaps {
          j = actions.next_entry,
          k = actions.prev_entry,
          o = actions.select_entry,
          y = actions.copy_hash, -- Copy the commit hash of the entry under the cursor
          L = actions.open_commit_log,
          zR = { actions.open_all_folds, desc = "  Open all folds" },
          zM = { actions.close_all_folds, desc = "  Close all folds" },
          ["?"] = { actions.options, desc = "  Options" }, -- Open the option panel
          ["<down>"] = actions.next_entry,
          ["<up>"] = actions.prev_entry,
          ["<cr>"] = actions.select_entry,
          ["<2-LeftMouse>"] = actions.select_entry,
          ["<C-A-d>"] = actions.open_in_diffview, -- Open the entry under the cursor in a diffview
          ["<c-b>"] = actions.scroll_view(-0.25),
          ["<c-f>"] = actions.scroll_view(0.25),
          -- ["<tab>"] = actions.select_next_entry,
          --["<s-tab>"] = actions.select_prev_entry,
        },
        option_panel = {
          q = actions.close,
          o = actions.select_entry,
          ["<cr>"] = actions.select_entry,
          ["<2-LeftMouse"] = actions.select_entry,
        },
      },
    }
  end,
}

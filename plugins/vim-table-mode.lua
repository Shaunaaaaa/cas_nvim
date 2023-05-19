return {
  "dhruvasagar/vim-table-mode",
  cmd = { "TableModeToggle" },
  config = function()
    vim.api.nvim_set_keymap("n", "<space>tm", ":TableModeToggle<CR>", { noremap = true })
    vim.g.table_mode_cell_text_object_i_map = "k<Bar>"
    vim.g.table_mode_corner_corner = "+"
    vim.g.table_mode_header_fillchar = "="
  end,
}

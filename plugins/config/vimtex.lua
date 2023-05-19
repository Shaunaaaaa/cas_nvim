vim.g.tex_flavor = "latex"
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_view_general_viewer = "zathura"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_compiler_progname = "nvr"
vim.api.nvim_set_keymap("n", "<S-F2>", ":VimtexTocToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_exec(
  [[
  let g:vimtex_toc_config = { 'name' : 'TOC', 'layers' : ['content', 'todo', 'include'], 'split_width' : 25, 'todo_sorted' : 0, 'show_help' : 1, 'show_numbers' : 1,}
  ]],
  false
)
vim.g.vimtex_compiler_progname = "nvr"

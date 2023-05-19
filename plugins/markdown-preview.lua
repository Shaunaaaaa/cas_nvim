return {
  "iamcco/markdown-preview.nvim",
  requires = {},
  run = "cd app && yarn install",
  ft = { "markdown" },
  config = function()
    -- require "user.plugins.markdown"
    vim.g.mkdp_auto_start = 0
    vim.g.mkdp_auto_close = 1
    vim.g.mkdp_refresh_slow = 0
    vim.g.mkdp_command_for_global = 0
    vim.g.mkdp_open_to_the_world = 0
    vim.g.mkdp_open_ip = ""
    -- vim.g.mkdp_browser = "chromium"
    -- vim.g.mkdp_browser = "firefox"
    -- vim.g.mkdp_browser = "microsoft-edge-stable"
    vim.g.mkdp_echo_preview_url = 0
    vim.g.mkdp_browserfunc = ""
    vim.api.nvim_exec(
      [[
  let g:mkdp_preview_options = {'mkit': {},'katex': {},'uml': {},'maid': {},'disable_sync_scroll': 0,'sync_scroll_type': 'middle','hide_yaml_meta': 1,'sequence_diagrams': {},'flowchart_diagrams': {},'content_editable': v:false,'disable_filename': 0}
]],
      false
    )
    vim.g.mkdp_markdown_css = ""
    vim.g.mkdp_highlight_css = ""
    vim.g.mkdp_port = ""
    vim.g.mkdp_page_title = "「${name}」"
    vim.g.mkdp_filetypes = { "markdown" }
  end,
}

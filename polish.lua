-- The function below will be executed last
return function()
  -- disable comment continuation
  vim.cmd [[set formatoptions-=cro]]
  -- Set global key binding
  -- local opts = { noremap = true, silent = true }
  -- local keymap = vim.api.nvim_set_keymap

  -- keymap("", "<S-h>", "^", opts)
  -- keymap("", "<S-l>", "$", opts)

  -- 自动切换输入法
  vim.api.nvim_create_autocmd({ "InsertLeave" }, { pattern = "*", command = ":silent !fcitx5-remote -c" })
  vim.api.nvim_create_autocmd({ "BufCreate" }, { pattern = "*", command = ":silent !fcitx5-remote -c" })
  vim.api.nvim_create_autocmd({ "BufEnter" }, { pattern = "*", command = ":silent !fcitx5-remote -c" })
  vim.api.nvim_create_autocmd({ "BufLeave" }, { pattern = "*", command = ":silent !fcitx5-remote -c" })

  -- 打开时自动定位到上次关闭位置
  vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = "*",
    command = [[if line("'\"") >= 1 && line("'\"") <= line("$") |   exe "normal! g`\"" | endif]],
  })

  -- 使用.跳转到行首、行尾
  vim.cmd [[
    noremap <expr>. col(".")==1?"$":"0"
    vnoremap <expr>. col(".")==1?"$h":"0"
  ]]

  -- 显示空格
  vim.cmd [[set list lcs=tab:\┊\ ,trail:▫]]

  -- 加载markdown输入快捷方式
  require "user.plugins.config.md1-snippets"
  require "user.plugins.config.md2-snippets"
  -- require "user.plugins.md3-snippets"
  vim.api.nvim_create_autocmd(
    { "InsertLeave", "BufEnter", "BufNewFile" },
    { pattern = "*.md", command = "setlocal spell" }
  )

  -- heirline
  -- require "user.heirline.colors"
  -- require "user.heirline.separators"
  -- require "user.heirline.heirline"

  -- ruby环境变量
  vim.g.ruby_host_prog = "~/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host"

  -- 一键编译运行
  -- 文件运行
  vim.api.nvim_exec(
    [[
    func! CompileRunGccA()
      exec "w"
      for i in ["c","cpp","python","sh","html","go","lua","rust","r","nix","javascript","java","typescript"]
        if &filetype == i
          exec "RunFile float"
       	elseif &filetype == 'markdown'
    		  exec "MarkdownPreview"
    	  elseif &filetype == 'tex'
    		  silent! exec "VimtexStop"
    		  silent! exec "VimtexCompile"
    		  " silent! exec "latexrun"
        endif
      endfor
    endfunc
  ]],
    false
  )
  -- 项目运行
  vim.api.nvim_exec(
    [[
    func! CompileRunGccB()
      exec "w"
      for i in ["c","cpp","python","sh","html","go","lua","rust","r","nix","javascript","java","typescript"]
        if &filetype == i
          exec "RunProject"
       	elseif &filetype == 'markdown'
    		  exec "MarkdownPreview"
    	  elseif &filetype == 'tex'
    		  silent! exec "VimtexStop"
    		  silent! exec "VimtexCompile"
        endif
      endfor
    endfunc
  ]],
    false
  )
  -- run auto commands
  require "user.autocmds"
end

vim.api.nvim_exec([[
  autocmd Filetype markdown inoremap <buffer> /1 <space><++> <bar><Esc>0jA ---- <bar><Esc>0jA <++> <bar><Esc>0jA <++> <bar>
  autocmd Filetype markdown inoremap <buffer> /2 <bar> <++> <bar> <++> <bar><Enter><bar> ---- <bar> ---- <bar><Enter><bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> /3 <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> ---- <bar> ---- <bar> ---- <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> /4 <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> ---- <bar> ---- <bar> ---- <bar> ---- <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> /5 <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> ---- <bar> ---- <bar> ---- <bar> ---- <bar> ---- <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> /6 <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> ---- <bar> ---- <bar> ---- <bar> ---- <bar> ---- <bar> ---- <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter>

  autocmd Filetype markdown inoremap <buffer> .1 <space><++> <bar><Esc>0jA :----: <bar><Esc>0jA <++> <bar><Esc>0jA <++> <bar>
  autocmd Filetype markdown inoremap <buffer> .2 <bar> <++> <bar> <++> <bar><Enter><bar> :----: <bar> :----: <bar><Enter><bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> .3 <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> :----: <bar> :----: <bar> :----: <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> .4 <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> :----: <bar> :----: <bar> :----: <bar> :----: <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> .5 <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> :----: <bar> :----: <bar> :----: <bar> :----: <bar> :----: <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> .6 <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> :----: <bar> :----: <bar> :----: <bar> :----: <bar> :----: <bar> :----: <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter><bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> \2 <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> \3 <bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> \4 <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> \5 <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  autocmd Filetype markdown inoremap <buffer> \6 <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar> <++> <bar><Enter>
  ]],false)

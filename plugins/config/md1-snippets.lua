vim.api.nvim_exec(
  [[
    autocmd filetype markdown inoremap <buffer> ,f <esc>/<++><cr>:nohlsearch<cr>"_c4l
    autocmd filetype markdown inoremap <buffer> ,w <esc>/ <++><cr>:nohlsearch<cr>"_c5l<cr>
    autocmd filetype markdown inoremap <buffer> ,e $$ <++><esc>F$i
    autocmd filetype markdown inoremap <buffer> ,s ~~~~ <++><esc>F~hi
    autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
    autocmd filetype markdown inoremap <buffer> ,u <u></u><left><left><left><left>
    autocmd Filetype markdown inoremap <buffer> ,n ****** <++><Esc>F*hhi
    autocmd filetype markdown inoremap <buffer> ,t <font color=""><++></font><++><esc>F"i
    autocmd filetype markdown inoremap <buffer> ,i ** <++><esc>F*i
    autocmd filetype markdown inoremap <buffer> ,d `` <++><esc>F`i
    autocmd filetype markdown inoremap <buffer> ,c ```<enter><++><enter>```<enter><enter><++><esc>4ka
    autocmd filetype markdown inoremap <buffer> ,m - [ ]
    autocmd filetype markdown inoremap <buffer> ,p ![](<++>) <++><esc>F[a
    autocmd filetype markdown inoremap <buffer> ,a [](<++>) <++><esc>F[a
    autocmd filetype markdown inoremap <buffer> ,1 #<space><enter><++><esc>kA
    autocmd filetype markdown inoremap <buffer> ,2 ##<space><enter><++><esc>kA
    autocmd filetype markdown inoremap <buffer> ,3 ###<space><enter><++><esc>kA
    autocmd filetype markdown inoremap <buffer> ,4 ####<space><enter><++><esc>kA
    autocmd Filetype markdown inoremap <buffer> ,5 #####<Space><Enter><++><Esc>kA
    autocmd Filetype markdown inoremap <buffer> ,6 ######<Space><Enter><++><Esc>kA
    autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>
    autocmd filetype markdown inoremap <buffer> 1<space> &nbsp;
    autocmd filetype markdown inoremap <buffer> 2<space> &nbsp;&nbsp;
    autocmd filetype markdown inoremap <buffer> 3<space> &nbsp;&nbsp;&nbsp;
    autocmd filetype markdown inoremap <buffer> 4<space> &nbsp;&nbsp;&nbsp;&nbsp;
    ]],
  false
)

" Buffer Enhancement - taken from https://github.com/gelus/vim-buffer-enhancement/tree/master
let s:myBuffers = {}
function! Add_To_Buffer(num)
  let currentBuffer = bufnr('')
  let s:myBuffers[a:num] = currentBuffer
  echo "Buffer added as " . a:num
endfunction

function! Go_To_Buffer(num)
  if a:num == 0
   exe "normal! \<c-^>"
  elseif has_key(s:myBuffers, a:num)
    execute "buf " . s:myBuffers[a:num]
  elseif bufexists(a:num)
    execute "buf " . a:num
  else
    echo "Buffer ". a:num . " does not exist"
  endif
endfunction

command! -nargs=1 GoToBuffer call Go_To_Buffer(<args>)
command! -nargs=1 AddToBuffer call Add_To_Buffer(<args>)
command! ListBuffer echo s:myBuffers
nnoremap <leader>1 :<C-U>GoToBuffer(1)<cr>
nnoremap <leader>2 :<C-U>GoToBuffer(2)<cr>
nnoremap <leader>3 :<C-U>GoToBuffer(3)<cr>
nnoremap <leader>4 :<C-U>GoToBuffer(4)<cr>
nnoremap <leader>5 :<C-U>GoToBuffer(5)<cr>
nnoremap <leader>6 :<C-U>GoToBuffer(6)<cr>
nnoremap <leader>7 :<C-U>GoToBuffer(7)<cr>
nnoremap <leader>8 :<C-U>GoToBuffer(8)<cr>
nnoremap <leader>9 :<C-U>GoToBuffer(9)<cr>
nnoremap <leader>m1 :<C-U>AddToBuffer(1)<cr>
nnoremap <leader>m2 :<C-U>AddToBuffer(2)<cr>
nnoremap <leader>m3 :<C-U>AddToBuffer(3)<cr>
nnoremap <leader>m4 :<C-U>AddToBuffer(4)<cr>
nnoremap <leader>m5 :<C-U>AddToBuffer(5)<cr>
nnoremap <leader>m6 :<C-U>AddToBuffer(6)<cr>
nnoremap <leader>m7 :<C-U>AddToBuffer(7)<cr>
nnoremap <leader>m8 :<C-U>AddToBuffer(8)<cr>
nnoremap <leader>m9 :<C-U>AddToBuffer(9)<cr>

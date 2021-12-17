" Author: cappyzawa <cappyzawa@yahoo.ne.jp>

if exists('g:loaded_go_playground_nvim')
  finish
end

let g:loaded_go_playground_nvim = 1

let s:save_cpo = &cpo
set cpo&vim

command! -range=% -bang GoPlayground lua require'playground/share'.play(<line1>, <line2>, false)
command! -range=% -bang GotipPlayground lua require'playground/share'.play(<line1>, <line2>, true)

let &cpo = s:save_cpo
unlet s:save_cpo

" Subset from plugin/statusline.vim (can't comment inline with line continuation
" markers without Vim freaking out).
let g:WincentQuickfixStatusline =
      \ 'Quickfix'
      \ . '%<'
      \ . '\ '
      \ . '%='
      \ . '\ '
      \ . 'ℓ'
      \ . '\ '
      \ . '%l'
      \ . '/'
      \ . '%L'
      \ . '\ '
      \ . '@'
      \ . '\ '
      \ . '%c'
      \ . '%V'
      \ . '\ '
      \ . '%1*'
      \ . '%p'
      \ . '%%'
      \ . '%*'

call defer#defer('call variables#init()')

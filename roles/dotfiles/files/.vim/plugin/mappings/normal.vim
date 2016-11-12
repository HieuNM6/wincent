" Normal mode mappings.

" Toggle fold at current position.
nnoremap <Tab> za

" Replay last macro, or @q if no specific last macro has been previously played.
nnoremap <expr> <silent> <CR> empty(&buftype) ? ':call mappings#normal#repeat_last_macro()<CR>' : '<CR>'

" Try to figure out which macro was the last updated.
nnoremap <silent> <expr> q mappings#normal#spy_on_registers()

" Relying on Karabiner to avoid collision between <Tab> and <C-i> (have it send
" F6 instead for <C-i>).
nnoremap <F6> <C-i>

" Avoid unintentional switches to Ex mode.
nnoremap Q <nop>

" Multi-mode mappings (Normal, Visual, Operating-pending modes).
noremap Y y$

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Like vim-vinegar.
nnoremap <silent> - :silent edit <C-R>=empty(expand('%')) ? '.' : fnameescape(expand('%:p:h'))<CR><CR>

" For each time K has produced timely, useful results, I have pressed it 10,000
" times without meaning to, triggering an annoying delay.
nnoremap K <nop>

" Repurpose cursor keys (accessible near homerow via "SpaceFN" layout) for one
" of my most oft-use key sequences.
nnoremap <silent> <Up> :cprevious<CR>
nnoremap <silent> <Down> :cnext<CR>
nnoremap <silent> <Left> :cpfile<CR>
nnoremap <silent> <Right> :cnfile<CR>

" Store relative line number jumps in the jumplist if they exceed a threshold.
nnoremap <expr> k (v:count > 5 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count : '') . 'j'

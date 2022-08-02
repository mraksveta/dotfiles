" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Moving between tabs
nnoremap <c-h>    :tabprevious<CR>
nnoremap <c-l>    :tabnext<CR>
inoremap <c-h>    <c-o>:tabprevious<CR>
inoremap <c-l>    <c-o>:tabnext<CR>

nnoremap ff <esc>:NERDTreeToggle<CR>

" moving between windows
nnoremap rr <C-w>w

inoremap jk <Esc>
inoremap kj <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

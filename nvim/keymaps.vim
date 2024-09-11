" Basic configuration
let mapleader = " "

" --- Movement ---
" Move 5 lines down/up
noremap <C-j> 5j
noremap <C-k> 5k

" Move between buffers with Ctrl + h/l
noremap <C-h> :bprev<CR>
noremap <C-l> :bnext<CR>

" Move between windows with Shift + h/l
noremap <S-h> <C-w>h
noremap <S-l> <C-w>l

" --- Easy Motion ---
" Search with space + s
nmap <leader>s <Plug>(easymotion-s2)

" --- NERDTree ---
" Toggle NERDTree
nmap <leader>e :NERDTreeToggle<CR>

" Refresh NERDTree
nmap <leader>r :NERDTreeRefreshRoot<CR>

" --- Files ---
" Save file
nmap <leader>w :w<CR>

" --- Compilation ---
" Compile and run C++ file with space + r
nmap <leader>r :w<CR>:!g++ % -o %:r && ./%:r<CR>

" --- Window Management ---
" Close window
nmap <leader>wd :q<CR>

" Create horizontal split
nmap <leader>ws :split<CR>

" Create vertical split
nmap <leader>wv :vsplit<CR>

" --- Buffers ---
" Delete current buffer
nmap <leader>bd :bd<CR>

nnoremap <leader>ue :Startify<CR>

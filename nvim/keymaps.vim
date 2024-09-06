
" Basic configuration
let mapleader = " "

" Move 5 lines up or down
noremap <C-j> 5j
noremap <C-k> 5k

" Easy motion with space + s
nmap <leader>s <Plug>(easymotion-s2)

" Compile and run C++ file with space + r
nmap <leader>r :w<CR>:!g++ % -o %:r && ./%:r<CR>

" Delete buffer
nmap <leader>bd :bd<CR>

" Close window
nmap <leader>wd :q<CR>

" Open file explorer
nmap <leader>e :NERDTreeToggle<CR>

" Save file
nmap <leader>w :w<CR>

" Create a new window (horizontal split)
nmap <leader>ws :split<CR>

" Create a new window (vertical split)
nmap <leader>wv :vsplit<CR>

" Move between buffers with Ctrl + h/l
noremap <C-h> :bprev<CR>
noremap <C-l> :bnext<CR>

" Move between windows with Shift + h/l
noremap <S-h> <C-w>h
noremap <S-l> <C-w>l

" Prevent 'd' from copying to the clipboard
noremap d "_d

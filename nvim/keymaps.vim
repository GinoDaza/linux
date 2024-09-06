
" Configuración básica
let mapleader = " "

" Moverse 5 líneas arriba o abajo
noremap <C-j> 5j
noremap <C-k> 5k

" Easy motion con espacio + s
nmap <leader>s <Plug>(easymotion-s2)

" Correr archivo C++ con espacio + r
nmap <leader>r :w<CR>:!g++ % -o %:r && ./%:r<CR>

" Borrar buffer
nmap <leader>bd :bd<CR>

" Borrar ventana
nmap <leader>wd :q<CR>

" Abrir explorador de archivos
nmap <leader>e :NERDTreeToggle<CR>

" Guardar archivo
nmap <leader>w :w<CR>

" Crear nueva ventana (split horizontal)
nmap <leader>ws :split<CR>

" Crear nueva ventana (split vertical)
nmap <leader>wv :vsplit<CR>

" Moverse entre ventanas con Ctrl + h/l
noremap <C-h> <C-w>h
noremap <C-l> <C-w>l

" Moverse entre buffers con Shift + h/l
noremap <S-h> :bprev<CR>
noremap <S-l> :bnext<CR>

noremap d "_d

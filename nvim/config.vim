let g:lightline = {'colorscheme': 'tokyonight'}

let g:startify_bookmarks = [
      \ {'c': '~/Desktop/alg_y_estr/aed'},
      \ {'d': '~/.config/nvim'},
      \ ]

let g:startify_enable_mru = 0
let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Projects'] },
      \ ]

let g:startify_center = 1  " Centra todo el contenido

" Atajo para abrir el menú de startify con <leader>ue
nnoremap <leader>ue :Startify<CR>

let g:lightline = {'colorscheme': 'tokyonight'}

let g:startify_bookmarks = [
      \ {'d': '~/Desktop/alg_y_estr/aed'},
      \ {'c': '~/.config/nvim'},
      \ ]

let g:startify_enable_mru = 0
let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Projects'] },
      \ ]

let g:startify_center = 1  " Centra todo el contenido

" Atajo para abrir el menú de startify con <leader>ue
nnoremap <leader>ue :Startify<CR>

let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active':{
      \     'right':[['lineinfo'],['percent']]
      \ },
      \ }

" Usa <Tab> para moverte por las sugerencias
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" Usa <S-Tab> para moverte hacia arriba en las sugerencias
inoremap <expr><S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Usa <Enter> para aceptar la sugerencia seleccionada
inoremap <silent><expr> <CR>
      \ coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>"

" Función para verificar si estás en el inicio de la línea
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

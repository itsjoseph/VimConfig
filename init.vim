" ----------------------------
"    Configuración Básica
" ----------------------------
set number                      " Muestra números de línea
set relativenumber              " Números relativos para moverse rápido
set tabstop=4                   " Tamaño del tab
set shiftwidth=4                " Auto indentación
set expandtab                   " Usa espacios en vez de tabs
set smartindent                 " Indentación inteligente
set clipboard=unnamedplus       " Comparte portapapeles con el sistema
syntax on                       " Syntax highlighting
set mouse=a                     " Soporte para mouse
set background=dark             " Fondo oscuro

" ----------------------------
"        Plugins
" ----------------------------
call plug#begin('~/.local/share/nvim/plugged')

" Explorador de archivos
Plug 'preservim/nerdtree'

" Comentarios rápidos
Plug 'tpope/vim-commentary'

" Temas de colores
Plug 'morhetz/gruvbox'

" Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"fzf.vim (búsqueda rápida)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"vim-surround (editar paréntesis, comillas, etiquetas rápido)
Plug 'tpope/vim-surround'

"Barra de estado
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

"vim-fugitive (git dentro de vim — imprescindible)
Plug 'tpope/vim-fugitive'

"gitsigns.nvim (ver cambios en el margen)
Plug 'lewis6991/gitsigns.nvim'

"Mejoras de integracion coc
Plug 'honza/vim-snippets'
Plug 'neoclide/coc-snippets'

call plug#end()

" ----------------------------
"     Atajos y colores
" ----------------------------
colorscheme gruvbox
map <C-n> :NERDTreeToggle<CR>



" ----------------------------
"     Atajos coc
" --------------------
" Navegar entre sugerencias
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Ir a definición
nmap <silent> gd <Plug>(coc-definition)

" Mostrar documentación
nmap <silent> K :call CocActionAsync('doHover')<CR>

" Renombrar variable
nmap <leader>rn <Plug>(coc-rename)

" Corregir errores sugeridos
nmap <leader>a <Plug>(coc-codeaction)



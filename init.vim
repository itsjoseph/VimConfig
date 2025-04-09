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

call plug#end()

" ----------------------------
"     Atajos y colores
" ----------------------------
colorscheme gruvbox
map <C-n> :NERDTreeToggle<CR>


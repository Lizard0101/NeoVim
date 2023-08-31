syntax on
syntax enable
set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set number 
set relativenumber
set rnu
set nowritebackup
set noswapfile
set nobackup
set nowritebackup
set incsearch
set clipboard=unnamedplus 
set encoding=utf-8
set cursorline
set colorcolumn=120
filetype plugin indent on "Para Latex


highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.local/share/nvim/plugged')

"Themes 
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Navegación
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'junegunn/fzf.vim',{ 'do' : {-> fzf#install()}}
Plug 'ryanoasis/vim-devicons' "Icons without colours
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'



Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'lilydjwg/colorizer'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Plugins para python
"_Plug 'neomake/neomake'

"Latex Plugins 
Plug 'lervag/vimtex'
Plug 'dense-analysis/ale'
"Plug 'vim-scripts/LaTeX-Suite-aka-Vim-LaTeX'



"Explorador de archivos
Plug 'nvim-tree/nvim-tree.lua'
Plug 'antosha417/nvim-lsp-file-operations'
Plug 'echasnovski/mini.base16'

call plug#end()


"Reinicia la ventana de init.vim
nmap<F5> :source ~/.config/nvim/init.vim<CR>
vmap<F5> :source ~/.config/nvim/init.vim<CR>

"Definimos la tecla lider
"let mapleader = " "

"Para que las flechas de direccion dejen de funcionar en modo visualización
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop> 

"Configraciones para los bufers
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

"NvimTree configuracion
lua<< EOF
require("nvim-tree").setup()
EOF

"Configuración de Fzf 
nnoremap <C-p> :Files<CR> 
nnoremap <C-g> :GitFiles<CR> 

"Configuración de NvimTree
noremap <C-n> :NvimTreeToggle<CR>


"Configuracio  de Vim-Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"Configuracion de Latex en nvim
let g:vimtex_compiler_latexmk = {
    \ 'executable': 'latexmk',
    \ 'options': ['-pdf', '-shell-escape'],
    \ 'continuous': 1,
    \ }


let g:vimtex_view_method = 'zathura'

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'dikiaap/minimalist'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier']


call plug#end()


set t_Co=256
syntax on
colorscheme minimalist

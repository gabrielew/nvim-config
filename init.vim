call plug#begin()

Plug 'jiangmiao/auto-pairs' " close pairs
Plug 'sainnhe/sonokai' " colorscheme
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " use coc extensions
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' " Icons
Plug 'sheerun/vim-polyglot' " highlight for some languanges

call plug#end()

" syntax
filetype plugin indent on
syntax on

set number
set splitright
set mouse=a
set cursorline
set hidden
set splitbelow splitright
" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

" Theme "
colorscheme sonokai
set t_Co=256

" Airline "
let g:airline_theme = 'sonokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1



" coc "
:nmap <space>e <Cmd>CocCommand explorer<CR>

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier', 'coc-explorer', 'coc-highlight', 'coc-git', 'coc-eslint', 'coc-prisma', 'coc-tailwindcss', 'coc-stylelint', 'coc-css', 'coc-markdownlint', 'coc-markdown-preview-enhanced']

:nmap <space>v <Cmd>:vs<CR>
:nmap <C-h> <c-w>h
:nmap <C-j> <c-w>j
:nmap <C-k> <c-w>k
:nmap <C-l> <c-w>l

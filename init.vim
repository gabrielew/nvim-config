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
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'


if (has("nvim"))
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
endif


call plug#end()

" syntax
filetype plugin indent on
syntax on
set encoding=UTF-8

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

" Neovim
if (has("nvim"))
  "Telescope
  nnoremap <leader>ff <cmd>Telescope find_files<cr>
  nnoremap <leader>fg <cmd>Telescope live_grep<cr>
  nnoremap <leader>fb <cmd>Telescope buffers<cr>
  nnoremap <leader>fh <cmd>Telescope help_tags<cr>
endif

  " coc "

let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier', 'coc-highlight', 'coc-git', 'coc-eslint', 'coc-prisma', 'coc-tailwindcss', 'coc-stylelint', 'coc-css', 'coc-markdownlint', 'coc-markdown-preview-enhanced', 'coc-explorer']

" Nerdtree
:nmap <space>e :NERDTreeToggle<CR>

" Remaps
"
" Split navigation
:nmap <space>v <Cmd>:vsplit<CR>
:nmap <space>h <Cmd>:split<CR>
:nmap qq :q<CR>
:nmap <C-h> <c-w>h
:nmap <C-j> <c-w>j
:nmap <C-k> <c-w>k
:nmap <C-l> <c-w>l

" Adding an empty line below, above and below with insert
:nmap op o<Esc>k
:nmap oi O<Esc>j
:nmap oo A<CR>

" Create buffer
:nmap <space>t <Cmd>:tabe<CR>

" Navigate between buffers
:nmap ty :bn<CR> " navigate to right
:nmap tr :bp<CR> " navigate to left

" Delete buffer
:nmap td :bd<CR>

" Auto Cmd
function! HighlightWordUnderCursor()
  if getline(".")[col(".")-1] !~# '[[:puct:][:blank:]]'
    exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
  else 
    match none
  endif
endfunction

autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

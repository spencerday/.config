call plug#begin('~/.config/nvim/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'vim-python/python-syntax'
    Plug 'tpope/vim-commentary'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'cespare/vim-toml'
    Plug 'morhetz/gruvbox'
    Plug 'itchyny/lightline.vim'
    Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

syntax on
filetype plugin indent on

let mapleader = " "

" General remaps
nnoremap <silent> <leader>s :w<CR>
nnoremap <silent> <leader>w :wq<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>c :noh<CR>
nnoremap <leader>t :tabe 
" Movement between tabs
nnoremap <silent> <leader>1 1gt
nnoremap <silent> <leader>2 2gt
nnoremap <silent> <leader>3 3gt
nnoremap <silent> <leader>4 4gt
nnoremap <silent> <leader>5 5gt
nnoremap <silent> <leader>6 6gt
nnoremap <silent> <leader>7 7gt
nnoremap <silent> <leader>8 8gt
nnoremap <silent> <leader>9 9gt
" Tab movement
nnoremap <silent> <leader><Right> gt
nnoremap <silent> <leader><Left> gT
" Change location of tabs
noremap <silent> <C-Left>  :-tabmove<cr>
noremap <silent> <C-Right> :+tabmove<cr>
"
" Automatically put closing bracket and move cursor
inoremap {<CR> {<CR>}<Esc>O

" coc settings
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
nmap <silent> <leader>gd <Plug>(coc-definition)zz
nmap <leader>rn <Plug>(coc-rename)

" run python files
nnoremap <silent> <leader>p :w<CR>:sp<CR>:term python3 %<CR>

" Return after jumping to definition
map <leader>r <C-o>zz

" Changes how to switch between windows
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>

" FZF
let g:fzf_layout = { 'down': '75%' }
let g:fzf_preview_window = 'right:60%'
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>fa :Files ~<CR>
nnoremap <silent> <leader>fg :GFiles ~<CR>
let g:fzf_action = {
     \ 'alt-t': 'tab split',
     \ 'alt-x': 'split',
     \ 'alt-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Fugitive
nmap <silent> <leader>g :G<CR>
nmap <silent> <leader>gc :Git commit<CR>
nmap <silent> <leader>gp :Git push<CR>

" c/c++ highlighting
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

" python highlighting
let g:python_highlight_all = 1

set bg=dark
set clipboard+=unnamedplus
set go=a
set mouse=a
set nohlsearch
set updatetime=50

nnoremap c "_c
set nocompatible
set termguicolors
colorscheme gruvbox
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }
" line below sets background transparent
hi Normal guibg=NONE ctermbg=NONE
set t_Co=256
set encoding=utf-8
set cc=80
set number relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ai
set smarttab
set smartindent
set wildmenu
set incsearch
set hlsearch
set wildmode=longest,list,full

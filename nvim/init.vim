call plug#begin('~/.config/nvim/plugged')
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'vim-python/python-syntax'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'vimwiki/vimwiki'
    Plug 'morhetz/gruvbox'
    Plug 'itchyny/lightline.vim'
    Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

" lsp/completion stuff
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }
nnoremap <silent> <leader>gd <Cmd>lua vim.lsp.buf.definition()<CR>

" c/c++ highlighting
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

" python syntax
let g:python_highlight_builtins = 1
let g:python_highlight_exceptions = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_func_calls = 1
let g:python_highlight_class_vars = 1
let g:python_highlight_operators = 1

" run python files
nnoremap <silent> <leader>p :w<CR>:sp<CR>:term python3 %<CR>

" Return after jumping to definition
map <leader>rr <C-o>zz

" FZF
let g:fzf_layout = { 'down': '75%' }
let g:fzf_preview_window = 'right:60%'
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fa :Files ~<CR>
nnoremap <silent> <leader>fg :GFiles <CR>
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

syntax on
filetype plugin indent on

let mapleader = " "

" General remaps
nnoremap <silent> <leader>s :w<CR>
nnoremap <silent> <leader>x :wq<CR>
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
" Changes how to switch between windows
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
" Automatically put closing bracket and move cursor
inoremap {<CR> {<CR>}<Esc>O

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

" plugins
call plug#begin('~/.config/nvim/plugged')
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'gruvbox-community/gruvbox'
    Plug 'itchyny/lightline.vim'
    Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

let mapleader = " "

" lsp/completion stuff
lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.gopls.setup{ on_attach=require'completion'.on_attach }
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
nnoremap <silent> <leader>gd <Cmd>lua vim.lsp.buf.definition()<CR>
" Return after jumping to definition
map <leader>r <C-o>zz

" telescope
nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>

" tresitter
lua require'nvim-treesitter.configs'.setup{ ensure_installed = {"c", "python", "java", "go"}, highlight = { enable=true } }

" run python files
nnoremap <silent> <leader>p :w<CR>:sp<CR>:term python3 %<CR>

" Fugitive
nmap <silent> <leader>g :G<CR>
nmap <silent> <leader>gc :Git commit<CR>
nmap <silent> <leader>gp :Git push<CR>

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
" Changes how to switch between windows
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
" Automatically put closing bracket and move cursor
inoremap {<CR> {<CR>}<Esc>O

" general stuff
syntax on
filetype plugin indent on
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
" set list listchars=trail:-,eol:↲
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

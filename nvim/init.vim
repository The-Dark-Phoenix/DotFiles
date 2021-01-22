"			┌───────────────────────────────────────────────────────────────┐
"			│ _____             _      _____  _                      _      │
"			│|  __ \           | |    |  __ \| |                    (_)     │
"			│| |  | | __ _ _ __| | __ | |__) | |__   ___   ___ _ __  ___  __│
"			│| |  | |/ _` | '__| |/ / |  ___/| '_ \ / _ \ / _ \ '_ \| \ \/ /│
"			│| |__| | (_| | |  |   <  | |    | | | | (_) |  __/ | | | |>  < │
"			│|_____/ \__,_|_|  |_|\_\ |_|    |_| |_|\___/ \___|_| |_|_/_/\_\│
"			│                                                               │
"			│                                                               │
"			└───────────────────────────────────────────────────────────────┘
"
"
"                                       NEOVIM Configuration File
"                                         BY: DARK_PHOENIX



" Plugins Managed By Vim Plug



call plug#begin("~/.vim/plugged")

Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
Plug 'christoomey/vim-tmux-navigator'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'itchyny/lightline.vim'
"Plug 'norcalli/nvim-colorizer.lua'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'frazrepo/vim-rainbow'
Plug 'fatih/vim-go'
Plug 'preservim/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'
"Plug 'editorconfig/editorconfig-vim'
call plug#end()

syntax on
set number
set nocompatible
set encoding=utf-8
filetype plugin indent on

"lua require'colorizer'.setup()
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:rainbow_active = 1
if (has("termguicolors"))
  set termguicolors
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1
let g:go_def_mapping_enabled = 0
set splitright
set splitbelow

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
syntax enable
syntax on
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"colorscheme nord
"if exists("$TMUX")
"        set t_Co=256
"        set notermguicolors
"else
"        set termguicolors
"endif
colorscheme nord

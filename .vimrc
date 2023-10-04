syntax on
filetype off

call plug#begin('~/.vim/plugged')

Plug 'github/copilot.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'erickzanardo/vim-xclip'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-unimpaired'
Plug 'isRuslan/vim-es6'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'joshdick/onedark.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'
Plug 'wycats/nerdtree'
Plug 'dracula/vim'

call plug#end()

autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1

" Status bar plugin (vim-airline)
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" fzf stays in the screen instead of in a floating window
"let g:fzf_layout = { 'down': '~40%' }

filetype plugin indent on    " required

" coc.vim config
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
autocmd CursorHold * silent call CocActionAsync('highlight')
" makes it work with enter key to accept the suggestion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" end coc.vim config

" Few configurations:
set hlsearch " Highlight search results
set encoding=UTF-8
set ffs=unix,dos,mac
set modeline
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set backspace=indent,eol,start
set laststatus=2
set cpoptions+=n
set number
set vb
set smartindent
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=235 gui=NONE guifg=NONE guibg=NONE
set clipboard=unnamed,unnamedplus

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

let g:airline_theme='dracula'

syntax enable
colorscheme dracula
"This is set on iTerm2
"set guifont=FiraCode_Nerd_Font:h11
let g:airline_powerline_fonts = 1

if (has("termguicolors"))
 set termguicolors
endif


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

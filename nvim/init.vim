" OutSource Best Source 
" ----------------------------------------------------------------------------
source ~/.config/nvim/plug.vim
source ~/.config/nvim/remap.vim
source ~/.config/nvim/config.vim
" ----------------------------------------------------------------------------

" Classical Config
" ----------------------------------------------------------------------------
syntax on
set noswapfile
set mouse=a
set backspace=indent,eol,start
set modelines=5
set modeline
set laststatus=2
set statusline=%f\ %l:%c\ [offset:\ %{line2byte(line('.'))-1+col('.')-1}]\ hex:\ 0x%02B
"set colorcolumn=110
set nohlsearch
set textwidth=100
set wrapmargin=0
set formatoptions=cqt "tcron
set nowrap
set encoding=utf-8
set foldenable
set fdm=marker
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set nu
set rnu
set numberwidth=5
set tabstop=2	
set shiftwidth=2
set noexpandtab
set smarttab
set cursorline
set cursorcolumn
set autoindent
set smartindent
set cindent
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoread " automatically reload files upon change outside VIM
set termguicolors
colorscheme base16-gruvbox-dark-medium

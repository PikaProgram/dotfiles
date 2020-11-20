" VimPlugs PepeSad

call plug#begin('~/.vim/plugged')

" Omni But Sharp
Plug 'OmniSharp/omnisharp-vim'

" Life Is Beuitiful In Black And White, And Even More Beutiful In C O L O R S
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-gruvbox8'
Plug 'chriskempson/base16-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'rafalbromirski/vim-aurora'

" Bars, Nice
Plug 'itchyny/lightline.vim'
Plug 'nicknisi/vim-base16-lightline'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'hardcoreplayers/spaceline.vim'

" Look Up To The Sky And See 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'

" I N D E N T
Plug 'yggdroot/indentline'

" Completing The Completion 
	" The COC
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	
	" Love (now in 2D)
	Plug 'davisdude/vim-love-docs', {'branch': 'build'}

"Matchups
Plug 'jiangmiao/auto-pairs'

" That Vegan Dude
Plug 'nvim-treesitter/nvim-treesitter'

" More Nerds
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

call plug#end()

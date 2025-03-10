" ~~~ Plugins ~~~
call plug#begin('~/.local/share/nvim/plugged')

 " Autocompletion, formatting, linting & Intellisense
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'wokalski/autocomplete-flow'
 Plug 'Shougo/neosnippet'
 Plug 'Shougo/neosnippet-snippets'
 Plug 'sheerun/vim-polyglot'
 Plug 'neoclide/coc-prettier', { 'do': 'yarn install --frozen-lockfile' }
 Plug 'SirVer/ultisnips'

 " Appearance and themes
 Plug 'ghifarit53/tokyonight-vim'
 Plug 'itchyny/lightline.vim'
" Plug 'ryuta69/elly.vim'

 " Fuzzy Search
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

 " Utilities
 Plug 'majutsushi/tagbar'
 Plug 'preservim/nerdtree'
 Plug 'tpope/vim-commentary'
 Plug 'tpope/vim-surround'
 Plug 'lambdalisue/suda.vim'
 Plug 'jiangmiao/auto-pairs'
 Plug 'machakann/vim-highlightedyank'
 Plug 'vimwiki/vimwiki'
 Plug 'tpope/vim-markdown'
 Plug 'nelstrom/vim-markdown-folding'
 Plug 'pangloss/vim-javascript'
 Plug 'ryanoasis/vim-devicons'
 Plug 'ervandew/supertab'
 Plug 'psliwka/vim-smoothie'
 Plug 'luochen1990/rainbow'
 Plug 'miyakogi/conoline.vim'
call plug#end()

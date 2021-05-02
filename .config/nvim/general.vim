" -------------------------vim config---------------------------------
" Shell
set shell=/bin/zsh

" Change <leader> bind from default \
let mapleader=";"

" Show leader key
set showcmd

" More natural split opening.
set splitbelow
set splitright

" Highlight the line on which the cursor lives.
set nocursorline

" Line Numbers
set number

" #TABS AND SPACES {{{
set expandtab " On pressing tab, insert 2 spaces
set tabstop=2 " show existing tab with 2 spaces width
set softtabstop=2
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set autoindent
set smarttab
set expandtab
" set nocompatible
"}}}

" Always show at least one line above/below the cursor.
set scrolloff=1

" Always show at least one line left/right of the cursor.
set sidescrolloff=5

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Use system clipboard
set clipboard=unnamedplus

" Remove timeout for partially typed commands
set notimeout

" Give more space for displaying messages.
set cmdheight=2

" Mouse support
set mouse=a

"Case insensitive searching
set ignorecase

" Encoding
set encoding=utf8
scriptencoding utf-8

" syntax
syntax enable

set noswapfile " No swap file
set nobackup
set nowritebackup
set textwidth=80
set formatoptions+=t
set colorcolumn=+1
set showmatch
set lazyredraw

" #FINDING FILES
" Use the `:find` command to fuzzy search files in the working directory
" The `:b` command can also be used to do the same for open buffers

" Search all subfolders
set path+=**

" Display matching files on tab complete
set wildmenu

" Ignore node_modules and images from search results
set wildignore+=**/node_modules/**,**/dist/**,**_site/**,*.swp,*.png,*.jpg,*.gif,*.webp,*.jpeg,*.map

" Show Invisibles
set list
"set listchars=tab:→→,eol:¬,space:.

" Automatically hide buffer with unsaved changes without showing warning
set hidden

" Treat all numbers as decimal regardless of whether they are padded with zeros
set nrformats=

" Highlight matches when using :substitute
set hlsearch

" Predicts case sensitivity intentions
set smartcase

" Jump to match when searching
set incsearch

set updatetime=300

" Strip trailing whitespace from all files
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\s\+$//e

" Tabs
nnoremap <C-left> :tabprevious<CR>
nnoremap <C-right> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <leader>w :tabclose<CR>

" F keys
" Quick write session with F2
map <F2> :mksession! ~/.vim_session<cr>
" And load session with F3
map <F3> :source ~/.vim_session<cr>

" Fix indentation
map <F7> gg=G<C-o><C-o>
" Toggle auto change directory
map <F8> :set autochdir! autochdir?<CR>

" Beginning and end of line
imap <C-a> <home>
imap <C-e> <end>
cmap <C-a> <home>
cmap <C-e> <end>

" Control-C Copy in visual mode
vmap <C-C> y

" Control-V Paste in insert and command mode
imap <C-V> <esc>pa
cmap <C-V> <C-r>0

" Insert mode movement
imap <M-h> <left>
imap <M-j> <down>
imap <M-k> <up>
imap <M-l> <right>
imap <M-f> <C-right>
imap <M-b> <C-left>

" netrw configuration
let g:netrw_browse_split = 0
let g:netrw_altfile = 1

" Clear search highlighting with Escape key
nnoremap <silent><esc> :noh<return><esc>

" turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Apply vim configurations without restarting
nnoremap <Leader>r :so ~/.config/nvim/init.vim<CR>

" A saner way to save files.<F2> is easy to press
nnoremap <F2> :w<CR>

" toggle buffer (switch between current and last buffer)
nnoremap <silent> <leader>bb <C-^>

" go to next buffer
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <C-l> :bn<CR>

" go to previous buffer
nnoremap <silent> <leader>bp :bp<CR>
" https://github.com/neovim/neovim/issues/2048
nnoremap <C-h> :bp<CR>

" close buffer
nnoremap <silent> <leader>bd :bd<CR>

" kill buffer
nnoremap <silent> <leader>bk :bd!<CR>

" list buffers
nnoremap <silent> <leader>bl :ls<CR>
" list and select buffer
nnoremap <silent> <leader>bg :ls<CR>:buffer<Space>

" horizontal split with new buffer
nnoremap <silent> <leader>bh :new<CR>

" vertical split with new buffer
nnoremap <silent> <leader>bv :vnew<CR>

"----------------------custom functions-----------------------------
" Toggle vertical line
set colorcolumn=
fun! ToggleCC()
  if &cc == ''
    " set cc=1,4,21
    set cc=80
  else
    set cc=
  endif
endfun
nnoremap <silent> <F9> :call ToggleCC()<CR>

" Auto toggle smart case of for ex commands
" Assumes 'set ignorecase smartcase'
augroup dynamic_smartcase
    autocmd!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

" Disable python2 provider
" let g:loaded_python_provider = 0
" let g:python_host_prog = ''
let g:python3_host_prog = "/home/hacstac/.pyenv/shims/python3"

" True Color Support
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

if !has('gui_running')
  set t_Co=256
endif

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" Control-S Save
"nmap <C-S> :w<cr>
"vmap <C-S> <esc>:w<cr>
"imap <C-S> <esc>:w<cr>
" Save + back into insert
" imap <C-S> <esc>:w<cr>a

" If lightline/airline is enabled, don't show mode under it
set noshowmode

set fillchars=vert::

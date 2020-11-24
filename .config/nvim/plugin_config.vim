" plugin Configs

"------------------------------------------------------------

" #SUPERTAB {{{
let g:SuperTabDefaultCompletionType = '<c-n>'
let g:SuperTabClosePreviewOnPopupClose = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<C-x><C-o>"
" }}}

"------------------------------------------------------------

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

"------------------------------------------------------------

" filetype plugin indent on
" Write buffer through sudo (works on vim but not neovim)
" cnoreabbrev w!! w !sudo -S tee % >/dev/null
" Neovim: suda plugin
cnoreabbrev w!! w suda://%

"------------------------------------------------------------

" JS
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

"------------------------------------------------------------


" Toggle NERDTree
" Can't get <C-Space> by itself to work, so this works as Ctrl - space - space
" https://github.com/neovim/neovim/issues/3101
" http://stackoverflow.com/questions/7722177/how-do-i-map-ctrl-x-ctrl-o-to-ctrl-space-in-terminal-vim#answer-24550772
"nnoremap <C-Space> :NERDTreeToggle<CR>
"nmap <C-@> <C-Space>
nnoremap <silent> <Space> :NERDTreeToggle<CR>

"------------------------------------------------------------
" Ctrlp
let g:ctrlp_switch_buffer = '0'
" Useful for large projects
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=10
" So that it does not only index starting from current directory
let g:ctrlp_working_path_mode = ""
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" Use ag AKA the_silver_searcher for indexing. Faster!!!
" TIP: Use ~/.ignore to ignore directories/files
" set grepprg=ag\ --nogroup\ --nocolor
" let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
""if executable('ag')
""  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
""endif
let g:ctrlp_show_hidden =1
let g:ctrlp_clear_cache_on_exit = 0

"------------------------------------------------------------

" Highlighted yank (-1 for persistent)
let g:highlightedyank_highlight_duration = 400

"------------------------------------------------------------

" Vimwiki
" let g:vimwiki_list = [{'path': '~/dox/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext=0
let g:vimwiki_table_mappings=0
let g:vimwiki_folding='expr'
nmap <leader>vv <Plug>VimwikiIndex
nmap <leader>vV <Plug>VimwikiTabIndex
nmap <leader>vs <Plug>VimwikiUISelect
nmap <leader>vi <Plug>VimwikiDiaryIndex
nmap <leader>vdd <Plug>VimwikiMakeDiaryNote
nmap <leader>vDD <Plug>VimwikiTabMakeDiaryNote
nmap <leader>vdy <Plug>VimwikiMakeYesterdayDiaryNote
nmap <leader>vdt <Plug>VimwikiMakeTomorrowDiaryNote
nmap <M-space> <Plug>VimwikiToggleListItem

"------------------------------------------------------------

" #COC {{{
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

let g:coc_disable_startup_warning = 1

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[c` and `]c` to navigate diagnosticsU
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> [c <Plug>(coc-diagnostic-prev)

" Hide floating windows
nmap <silent> <leader>fh <Plug>(coc-float-hide)
" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Get code action for current line
nmap <leader>do <Plug>(coc-codeaction)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <silent> <leader>f <Plug>(coc-format-selected)

" Show all diagnostics
nnoremap <silent> <space>a  :CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :CocListResume<CR>

command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nnoremap <silent> <Leader>k :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" }}}

"------------------------------------------------------------

" #ULTILSNIPS {{{
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/snips"
let g:UltiSnipsSnippetDirectories=["snips"]
"}}}

"------------------------------------------------------------

" #FZF {{{
let g:fzf_command_prefix = 'Fzf'

" floating fzf window with borders
let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

function! FZFWithDevIcons()
  let l:fzf_files_options = ' -m --bind ctrl-d:preview-page-down,ctrl-u:preview-page-up --preview "bat --color always --style numbers {2..}"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND.'| devicon-lookup'), '\n')
    return l:files
  endfunction

  function! s:edit_file(items)
    let items = a:items
    let i = 1
    let ln = len(items)
    while i < ln
      let item = items[i]
      let parts = split(item, ' ')
      let file_path = get(parts, 1, '')
      let items[i] = file_path
      let i += 1
    endwhile
    call s:Sink(items)
  endfunction

  let opts = fzf#wrap({})
  let opts.source = <sid>files()
  let s:Sink = opts['sink*']
  let opts['sink*'] = function('s:edit_file')
  let opts.options .= l:fzf_files_options
  call fzf#run(opts)
endfunction

" Open fzf Files
nnoremap <silent> <C-p> :call FZFWithDevIcons()<CR>

function! CreateCenteredFloatingWindow()
    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction
" }}}

"------------------------------------------------------------

" RAINBOW {{{
let g:rainbow_active = 1
let g:conoline_auto_enable = 1
" }}}

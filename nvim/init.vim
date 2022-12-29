" Improved version, required
syntax on
set title 
set number 
set mouse=a
set tabstop=2
set softtabstop=2 
set shiftwidth=2
set laststatus=2
set noshowmode
set cursorline 
set wildmenu
set relativenumber 
set fillchars+=vert:\ 
let g:airline_powerline_fonts = 1
set nocompatible            
set encoding=utf-8
scriptencoding utf-8
set showmatch

" required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
highlight Comment ctermfg=lightblue
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#ffffff guibg=#000000

call vundle#begin()

Plugin 'neovim/nvim-lsp'
Plugin 'robert-oleynik/clangd-nvim'
Plugin 'dracula/vim', { 'as': 'dracula' }
Plugin 'VundleVim/Vundle.vim' " Plugin manager
Plugin 'vim-airline/vim-airline' " Airline  symbols
Plugin 'vim-airline/vim-airline-themes' " Airline themes
Plugin 'junegunn/fzf.vim' " Fuzzy search
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } } " Keep latest version of fzf
Plugin 'airblade/vim-gitgutter'
Plugin 'honza/vim-snippets' " Allow using snippets
Plugin 'terryma/vim-multiple-cursors' " Allow using multiple cursors 
Plugin 'SirVer/ultisnips' " Vim snippets
Plugin 'octol/vim-cpp-enhanced-highlight' " Enhanced cpp syntax highlighter
Plugin 'rhysd/vim-clang-format' " ClangFormat
Plugin 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
set guifont=Source\ Code:h15:cANSI

let g:dracula_colorterm = 0

let g:matchup_matchparen_enabled = 1
let g:coc_global_extensions = [
            \ 'coc-snippets',
            \ 'coc-ultisnips',
            \ ]

let g:tagbar_autoclose = 1
set ttyfast			"Faster refresh
set showcmd			"Show 'incomplete' commands
set lazyredraw			"Don't update display while executing macros
set expandtab			"Tabs are spaces
set smarttab			"Tab in insert mode ignores spaces ahead
set belloff=all
set hidden                      "for coc.nvim
set laststatus=0                "merge status and mode
set updatetime=300

let g:loaded_matchparen=1 	"Don't show matching parentheses
let g:netrw_liststyle=3		"Vim Explorer NTree style
let &titleold=getcwd()		"Don't break my spawn_cwd dwm patch

let g:solarized_termcolors=256
set shortmess+=c

set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

  " cursor movement windows {{{
  nnoremap <C-h> <C-W>h
  nnoremap <C-j> <C-W>j
  nnoremap <C-k> <C-W>k
  nnoremap <C-l> <C-W>l
  " move vertically by visual line
  nnoremap j gj
  nnoremap k gk
  nnoremap 0 g0
  nnoremap $ g$
  " }}}
  " terminal {{{
  if exists(':tnoremap')
    tnoremap <C-h> <C-\><C-n><C-w>h
    tnoremap <C-j> <C-\><C-n><C-w>j
    tnoremap <C-k> <C-\><C-n><C-w>k
    tnoremap <C-l> <C-\><C-n><C-w>l
    tnoremap <esc><esc> <C-\><C-n>
    tnoremap <esc><tab> <C-\><C-n>:bnext<CR>
    tnoremap <esc><bs> <C-\><C-n>:bprev<CR>
    tnoremap <c-l> clear<CR>
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
  endif
  " }}}
  " dimensions {{{
  nnoremap <leader>- <c-w>_ " Max height
  nnoremap <leader>\ <c-w><bar> " Max width leader+|
  nnoremap <leader>= <c-w>= " Fair defaults
let g:UltiSnipsExpandTrigger="<c-j>"


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
map <C-p> :Files<CR>
map <C-b> :Buffers<CR>
map <C-f> :ClangFormat<CR>
map <C-y> :* yank +<CR>
map <C-s> :CocCommand clangd.switchSourceHeader<CR>
nmap <silent> gs :CocCommand clangd.symbolInfo<CR>
autocmd CursorHold * silent call CocActionAsync('highlight')
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
let g:python_highlight_all = 1

let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_no_function_highlight = 1
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_experimental_template_highlight=1
let g:cpp_concept_highlight=1

let $FZF_DEFAULT_OPTS .= '--color=bg:#20242C --border --layout=reverse'
function! FloatingFZF()
let width = float2nr(&columns * 0.9)
let height = float2nr(&lines * 0.6)
let opts = { 'relative': 'editor',
\ 'row': (&lines - height) / 2,
\ 'col': (&columns - width) / 2,
\ 'width': width,
\ 'height': height,
\ 'style': 'minimal'
\}

let win = nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
call setwinvar(win, '&winhighlight', 'NormalFloat:TabLine')
endfunction

let g:fzf_layout = { 'window': 'call FloatingFZF()' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dracula'
let b:airline_whitespace_disabled = 1
set background=dark
let g:tagbar_compact = 1

set rnu              " show line numbers
set lazyredraw
set linebreak    "Wrap lines at convenient points
set showtabline=2
set ignorecase
nnoremap <silent> <leader>f :Files<CR>
set hlsearch
map <C-h> :noh<CR>
nnoremap gV `[v`]
set undodir=~/.undodir
set undofile
set undolevels=1000 "maximum number of set changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
set statusline+=%#warningmsg#
set statusline+=%*
nmap <esc><tab> :bnext<CR>
nmap <esc><bs> :bprev<CR>
let g:UltiSnipsEditSplit = 'vertical'
let g:clang_format#command="clang-format"
colorscheme dracula

:vmap <C-Space> :norm i// <CR>
:nmap <C-Space> :norm i// <CR>
:vmap <C-x> :norm ^xx <CR>
:set wrap
set listchars=eol:$
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

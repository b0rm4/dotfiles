set termguicolors

"" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'AlessandroYorba/Alduin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'ts-26a/vim-darkspace'
Plug 'lewis6991/moonlight.vim'
"Plug 'tpope/vim-endwise'

call plug#end()


let g:alduin_Shout_Dragon_Aspect = 1
let g:darkspace_italics=1


set background=dark
"set termguicolors
""colorscheme gruvbox
"colorscheme solarized8
""colorscheme yuejiu
"colorscheme fromthehell
""colorscheme garbage-oracle
"colorscheme blood-moon
"colorscheme alduin
""colorscheme gotham
"colorscheme night-owl
colorscheme darkspace
"colorscheme nightfly
"colorscheme moonlight

let g:airline_powerline_fonts = 1
"let g:airline_theme='badwolf'
""let g:airline_theme='gruvbox'
let g:airline_theme='wombat'



" Can be typed even faster than jj, and if you are already in
"     normal mode, you (usually) don't accidentally move:
:imap jk <Esc>
:imap kj <Esc>

set number
"mode avancé activé
set nocompatible
"set antialias
filetype on
filetype plugin on
filetype indent on


" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
    set signcolumn=number
    else
      set signcolumn=yes
      endif


"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? coc#_select_confirm() :
"      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"
"function! s:check_back_space() abort
"         let col = col('.') - 1
"           return !col || getline('.')[col - 1]  =~# '\s'
"    endfunction
"
"let g:coc_snippet_next = '<tab>'

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

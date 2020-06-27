" mode avancé activé
set nocompatible
set antialias
filetype on
filetype plugin on
filetype indent on

set termguicolors

" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set t_Co=256

highlight Normal ctermbg=black ctermfg=white

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'Chiel92/vim-autoformat'
Plug 'gregsexton/matchtag'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'morhetz/gruvbox'
Plug 'haishanh/night-owl.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'AlessandroYorba/Alduin'
Plug 'slugbyte/yuejiu'
Plug 'szorfein/fromthehell.vim'
Plug 'sansbrina/vim-garbage-oracle'
Plug 'dguo/blood-moon', {'rtp': 'applications/vim'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'pangloss/vim-javascript'
Plug 'raimondi/delimitmate'
Plug 'honza/vim-snippets'
Plug 'vim-syntastic/syntastic'
Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'wokalski/autocomplete-flow'
"  " For func argument completion
"  Plug 'Shougo/neosnippet'
"  Plug 'Shougo/neosnippet-snippets'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
"let g:neosnippet#enable_completed_snippet = 1
"let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_server_python_interpreter = '/usr/bin/python2'
call plug#end()

let &t_ut=''

let g:EditorConfig_exclude_patterns = ['fugitive://.\*']

"highlight Normal ctermbg=black ctermfg=white
"set background=dark

let g:alduin_Shout_Dragon_Aspect = 1
"let g:alduin_Shout_Become_Ethereal = 1

set background=dark
"set termguicolors
"colorscheme gruvbox
"colorscheme solarized8
"colorscheme yuejiu
"colorscheme fromthehell
"colorscheme garbage-oracle
"colorscheme blood-moon
colorscheme alduin
"colorscheme gotham
"colorscheme night-owl


let g:airline_powerline_fonts = 1
"let g:airline_theme='badwolf'
"let g:airline_theme='gruvbox'
let g:airline_theme='wombat'

"-- EMMET config--
let g:user_emmet_leader_key=','

" ###### GRUVBOX #######
let g:gruvbox_italic = 1
let g:gruvbox_bold = 1
let g:gruvbox_contrast_dark='hard'

" #### RUST ####
set hidden
let g:racer_cmd = "/home/molten/.cargo/bin/racer"

let g:racer_experimental_completer = 1
"let g:racer_insert_paren = 1

"########### syntastic #########
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']

" on indique le chemin de l'outil de gestion des scripts puis on l'appelle
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" on charge les plugins, le premier étant Vundle lui-même (obligatoire)
"Plugin 'VundleVim/Vundle.vim'

"############ PLUGINS ###########"

" Toujours garder les plugins entre vundle#begin/end.
" plugin d'un dépôt GitHub
"Plugin 'tpope/vim-fugitive'
" Plugin git qui n'est pas hébergé sur GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" Dépôt git sur notre machine locale (utile quand on développe son propre plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" Le script sparkup est dans un sous répertoire du dépôt appelé vim.
" Indiquez correctement le chemin d'exécution
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Installer L9 et éviter les conflits de nom si vous avez déjà
" différentes versions quelque part.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" Tous les plugins doivent être définis avant cette ligne
"call vundle#end()            " nécessaire

set title
" numérotation des lignes
set number
set mouse=a

set scrolloff=3
set smartcase

" coloration automatique
syntax enable

" touche leader (= la virgule)
" cela ne sert pas ici, je le
" laisse pour mémoire
let mapleader=","

" on désactive le retour à la ligne
"set nowrap
set wrap
set ruler
" indentation de 4 espaces, y compris pour 'tab'
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" on rétabli le fonctionnement 'normal' de 'backspace'
set backspace=indent,eol,start

" indentation automatique
set autoindent

" recherche sans respecter la casse
set ignorecase
" recherche en rotation (on revient au début du fichier à la fin)
set incsearch
" surbrillance du terme recherché
set hlsearch
" on désactive la surbrillance (virgule + espace)
nmap <silent> <leader><space> :noh<CR>

" pas de backup, fichier temp, etc
set nobackup
set nowritebackup
set noswapfile

" pas d'alerte
set novisualbell
set noerrorbells

set backspace=indent,eol,start
set hidden

" utiliser les onglets (F7 = précédent, F8 = suivant)
" ouvrir un nouvel onglet = ':tabedit {fichier}'
nmap <F7> :tabprevious <CR>
nmap <F8> :tabnext <CR>
map <F7> :tabprevious <CR>
map <F8> :tabnext <CR>
imap <F7> <Esc> :tabprevious <CR>i
imap <F8> <Esc> :tabnext <CR>i

" Desactiver les touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
:imap ;; <Esc>
:map ;; <Esc>
map <F5> :w<CR>:!clear;python %<CR>
imap <F5> <Esc>:w<CR>:!clear;python %<CR>
map <C-o> :NERDTreeToggle<CR>
"
"deoplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

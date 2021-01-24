call plug#begin('~/.vim/plugged')
  Plug 'Smirnov-O/nten16.vim'   " Color scheme
  Plug 'itchyny/lightline.vim'  " Status line
  Plug 'maximbaz/lightline-ale' " ALE in status line
  Plug 'airblade/vim-gitgutter' " Git indicator
  Plug 'ap/vim-css-color'       " HEX/CSS color preview
  Plug 'mhinz/vim-startify'     " Start page
  Plug 'scrooloose/nerdtree'    " File manager
  Plug 'dense-analysis/ale'     " Linter
  Plug 'kassio/neoterm'         " Terminal wrapper
  Plug 'metakirby5/codi.vim'    " Live REPL
  Plug 'editorconfig/editorconfig-vim'  " EditorConfig support
  Plug 'christoomey/vim-tmux-navigator' " Jump from vim to tmux and back
  Plug 'Xuyuanp/nerdtree-git-plugin'    " NERDTree git status

  " Completion & snippets
  "Plug 'ervandew/supertab'
  Plug 'jiangmiao/auto-pairs'
  Plug 'SirVer/ultisnips'
  Plug 'mattn/emmet-vim', {'for': ['html', 'javascript']}

  " Language support 
  Plug 'othree/yajs.vim',          {'for': 'javascript'}
  Plug 'maxmellon/vim-jsx-pretty', {'for': 'javascript'}

  Plug 'vim-python/python-syntax', {'for': 'python'}

  Plug 'cakebaker/scss-syntax.vim', {'for': ['scss', 'sass']}

  Plug 'plasticboy/vim-markdown',      {'for': 'markdown'}
  Plug 'PotatoesMaster/i3-vim-syntax', {'for': 'i3'}
  Plug 'kovetskiy/sxhkd-vim',          {'for': 'sxhkd'}
call plug#end()


" Theme
set termguicolors
colorscheme nten16
set t_Co=256

" Syntax & number line
syntax on
set nu rnu

" Status line
set noshowmode
set ruler
set showcmd

" Mouse
set mouse=a mousehide
set cursorline

" Encoding
set encoding=utf-8
set fileencodings=utf-8

" Line wrap
set nowrap nolinebreak

" Backup file & history
set nobackup noswapfile
set history=100

" Reload file
set autoread

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Search
set incsearch
set ignorecase
set smartcase

" Buffer(s)
set hidden
set smartindent

" Spell
"set spell spelllang=en_us

" Disable sound
set visualbell t_vb=


" == Language configuration

" Python
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
let g:python_higlight_all = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_string_format = 1
let g:python_highlight_doctests = 1
let g:python_highlight_func_calls = 1
let g:python_highlight_class_vars = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:markdown_fenced_languages = ['javascript', 'js=javascript', 'python', 'py=python', 'bash', 'sh=bash']


" == Plugins configuration
let g:lightline = {
\ 'colorscheme': 'nten16',
\ 'active': {
\    'left':  [ [ 'mode', 'paste' ],
\               [ 'readonly', 'modified' ],
\               [ 'linter_errors', 'linter_warnings', 'linter_infos' ] ],
\    'right': [ [ 'lineinfo' ],
\               [ 'percent' ],
\               [ 'filename', 'filetype' ] ]
\ },
\ 'component_expand': {
\   'linter_checking': 'lightline#ale#checking',
\   'linter_infos': 'lightline#ale#infos',
\   'linter_warnings': 'lightline#ale#warnings',
\   'linter_errors': 'lightline#ale#errors',
\   'linter_ok': 'lightline#ale#ok'
\ },}

" Emmet
let g:user_emmet_expandabbr_key='<tab>'
let g:user_emmet_mode='inv'

" UltiSnipts
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<C-tab>"
let g:UltiSnipsSnippetDirectories = ["snips"]

" Startify
let g:startify_custom_header = [
\ " _____         _____ _         ",
\ " |   | |___ ___|  |  |_|_____  ",
\ " | | | | -_| . |  |  | |     | ",
\ " |_|___|___|___|\___/|_|_|_|_| ",
\ ]
let g:startify_lists = [
\ { 'type': 'bookmarks', 'header': ["  Bookmarks"] },
\ { 'type': 'files',     'header': ["  Files"] },
\ ]

" == Mapping
let mapleader=","

" exit from insert mode
im jj <esc>

" window(s)
nmap <C-h> :wincmd h<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-k> :wincmd k<CR>
nmap <C-l> :wincmd l<CR>
nmap <A-z> :wincmd K<CR>
nmap <A-x> :wincmd L<CR>
nmap <A-c> :wincmd n<CR>

" Tab(s)
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>
noremap <C-t> :tabnew<CR>
noremap <C-w> :tabclose<CR>
noremap <A-1> :tabn 1<CR>
noremap <A-2> :tabn 2<CR>
noremap <A-3> :tabn 3<CR>
noremap <A-4> :tabn 4<CR>
noremap <A-5> :tabn 5<CR>
noremap <A-6> :tabn 6<CR>
noremap <A-7> :tabn 7<CR>
noremap <A-8> :tabn 8<CR>
noremap <A-9> :tabn 9<CR>

" Buffer(s)
noremap <leader>b :bnext<CR>
noremap <leader>p :bprev<CR>

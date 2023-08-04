syntax enable
set number relativenumber   " Show relative line numbers with current line shown as absolute
set ignorecase smartcase    " Perform case insensitive search for all lowercase or case sensitive when capitals are entered
set incsearch               " Incremental search
set tabstop=4               " Specifies width of tab character
set shiftwidth=4            " Sets whitespace to insert when using indentation commands in normal mode
set softtabstop=4           " Sets the number of columns to inc/dec column position
set expandtab               " Use spaces instead of tab character
set re=0                    " Prevent slow typescript syntax indexing
set noerrorbells            " Turn off error bells

" Remaps
inoremap jj <Esc>

" Plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" Plug 'dracula/vim', {'as': 'dracula'}
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main'}
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme embark

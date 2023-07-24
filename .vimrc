syntax on
set number
set cursorLine  " Highlight current line
set tabstop=4  " Set tabs to 4 spaces
set ignorecase  " Search is case insensitive
set incsearch  " Highlight dynamically as search query is typed
set noerrorbells  " Disable error bells

" remaps
inoremap jj <Esc>

" Plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-commentary'
call plug#end()

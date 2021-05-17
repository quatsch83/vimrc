" Vim plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'plasticboy/vim-markdown'

Plug 'vim-airline/vim-airline'

Plug 'gruvbox-community/gruvbox'

" After sourcing .vimrc run :PlugInstall
call plug#end()

"}}}

" Settings{{{
set relativenumber
set number
set tabstop=4
set shiftwidth=4
set textwidth=0
set linebreak
set hidden

syntax on


colo gruvbox
"}}}

" Mappings {{{
let mapleader="\ "

nnoremap <leader>sv :source ~/.vim/.vimrc<cr>
nnoremap <leader>ev :edit ~/.vim/.vimrc<cr>

inoremap jk <esc>

vnoremap > >gv
vnoremap < <gv

" }}}


augroup vim_files
autocmd!
	autocmd FileType vim set foldmethod=marker
	autocmd FileType vim set commentstring=''
augroup end

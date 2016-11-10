set nocompatible
set modelines=0
filetype off       

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized
set encoding=utf-8

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set showmode
set showcmd
set wildmenu
set ttyfast
set ruler
set laststatus=2
set nowrap

set incsearch
set showmatch
set hlsearch
set gdefault

set mouse=a

" Unbind arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

au FocusLost * :wa

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

let mapleader = "\<Space>"
if has('mac')
    nnoremap <T-Left> <C-w><Left>
    nnoremap <T-Right> <C-w><Right>
    nnoremap <T-Up> <C-w><Up>
    nnoremap <T-Down> <C-w><Down>
else
    nnoremap <C-Left> <C-w><Left>
    nnoremap <C-Right> <C-w><Right>
    nnoremap <C-Up> <C-w><Up>
    nnoremap <C-Down> <C-w><Down>
end

nnoremap <leader>w <C-w>v<C-w>l

" YouCompleteMe
autocmd CompleteDone * pclose
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

